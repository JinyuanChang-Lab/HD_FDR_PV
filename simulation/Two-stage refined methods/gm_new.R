#' Gaussian Mirrors for Controlled Variable Selection
#'
#' 
#' @param y response variable. Quantitative for family="gaussian", or family="poisson" (non-negative counts). For family="binomial" should be either a factor with two levels.
#' @param x input design matrix of dimension n x p; each row is an observation vector.
#' @param q target FDR level. The default value is 0.1.
#' @param family response type.
#' @param ncores number of cores used for parallel computation of the GM_1 to GM_p. We recommend to use multiple cores which will greatly reduce the computational time.
#' @param var.est logical flag for estimating the variance of FDR. The default value is FALSE.
#' @param rep.boot the size of bootstrap sample for estimating the variance of FDR. 
#' @param nlambda The number of lambda values. The default is 100.
#' @return gm_selected: the index of selected variable.
#' @return gm_statistics: the value for mirror statistics.
#' @return gm_var: if the var.est=TRUE, return the estimated variance of FDR.
#'
#' @author Xin Xing, \email{xin_xing@fas.harvard.edu}
#' @references \url{}
#' @keywords gaussian mirror, variable selection, fdr
#'
#' @examples
#' \donttest{n <- 300  # Number of observations
#'p <- 1000  # Number of predictors included in model
#'q <- 60  # Number of true predictors
#'amplitude = 20 # signal amplitude (for noise level = 1) 
#'
#'
#' # Generate the variables from a multivariate normal distribution
#' times <- 1:p
#'sigma <- 1
#' rho = 0.5
#'H <- abs(outer(times, times, "-"))
#'V <- sigma * rho^H
#'x = mvrnorm(n, mu = rep(0,p), Sigma=V)
#'
#'# Generate the response.
#'true_index= sample(p,q)
#'beta = numeric(p)
#'beta[true_index]=beta_q
#'mu = x %*%  beta
#' y = mu + rnorm(n)
#'
#'# Fit the Gaussian mirror model
#'fit = gm(y, x, ncores=4)
#'}
#'
#'
#' @export
#' @importFrom MASS mvrnorm
#' @import glmnet
#' @import foreach
#' @import doParallel


gm_new  = function(y, x, q=0.1, family="gaussian", ncores = 1,rep.boot=100, var.est=FALSE){
  
  n = length(y)
  p = dim(x)[2]
  x= scale(x)
  lambda_max = 1*max(abs(t(x) %*% y))/(n^(3/2))
  lambda_min = lambda_max / 1e2
  nlambda=100
  k = (0:(nlambda-1)) / nlambda
  lambda = lambda_max * (lambda_min/lambda_max)^k
  fit0.lasso = cv.glmnet(x, y, family=family, lambda=lambda, nfold=10,alpha=1)
  lambda_ast = fit0.lasso$lambda.min
  
  coef_ast = coef(fit0.lasso, s='lambda.min')[-1]
  if(sum(coef_ast!=0)>0.9*n){
    ord_idx = order(abs(coef_ast[which(coef_ast!=0)]))
    coef_ast[which(coef_ast!=0)[1:(sum(coef_ast!=0)-0.9*n)]]=0
  }
  sigmaz_vec = numeric(p)
  z = matrix(0, nrow=n, ncol=p)
  
  #################################################################
  cat("Generate Gaussian mirrors... ...")
  
  for(j in 1:p){
    jidx =  intersect(which(coef_ast!=0), c(1:p)[-j])
    xj =  x[,j]
    xnj = x[,jidx]
    xnj.svd = svd(xnj)
    xnj.idx=1:(min(0.95*length(jidx),n))
    pxnj = xnj.svd$u[, xnj.idx] 
    pp= (1 - t(xj) %*% pxnj  %*%  solve(t(pxnj) %*% pxnj) %*% t(pxnj) %*% xj/n)
    
    if(pp<0.05){
      xnj.idx=1:10
      pxnj = xnj.svd$u[, xnj.idx] 
      sigmaz_vec[j] = (1 - t(xj) %*% pxnj  %*%  solve(t(pxnj) %*% pxnj) %*% t(pxnj) %*% xj/n)/(1- sum(coef_ast!=0)/n)
    }else{
      sigmaz_vec[j] = pp/(1- sum(coef_ast!=0)/n)
    }
    z[,j] = rnorm(n,0,sqrt(sigmaz_vec[j]))
  }
  
  
  #########################################################################
  cat("Calculate mirror statistics ... ...")
  w_vec = numeric(p)
  #cl <- makeCluster(ncores)
  #registerDoParallel(cl)
  para_list = foreach(z_idx_i = 1:p,.packages='glmnet') %do% {
    
    z_idx = z_idx_i
    z_indicator = numeric(p)
    z_indicator[z_idx]=1
    z_indicator = as.logical(z_indicator)
    x = scale(x)
    xnew = cbind(x[,z_indicator] + z[,z_indicator], x[,z_indicator] - z[,z_indicator], x[,as.logical(1-z_indicator)])
    
    fit1.lasso = glmnet(xnew, y, family=family, lambda=lambda_ast)
    z_idx_len = length(z_idx)
    b11 = coef(fit1.lasso, s = 'lambda.min')[2:(z_idx_len+1)]    
    b12 = coef(fit1.lasso, s = 'lambda.min')[(z_idx_len+2):(2*z_idx_len+1)]
    w =  abs(b11+b12)- abs(b11-b12)
    
    
    pred.lasso = predict(fit1.lasso, newx=xnew )
    residual.lasso = y - pred.lasso 
    
    if(var.est==TRUE){
      w.boot   =    rep( 0, rep.boot )
      b11.boot = rep(0, rep.boot )
      b12.boot = rep(0, rep.boot )
      
      for(ind.boot in 1:rep.boot)
      {
        z.boot = matrix(rnorm(n*sum(z_indicator),0,sigmaz_vec[z_idx_i]), nrow=n, ncol= sum(z_indicator) )
        xnew.boot = cbind(x[,z_indicator] + z.boot, x[,z_indicator] - z.boot, x[,as.logical(1-z_indicator)])
        y.boot = sample(residual.lasso, n, replace=T) + pred.lasso
        fit.lasso.boot = glmnet( xnew.boot, y.boot, family="gaussian", lambda=lambda_ast, alpha=1 )
        
        b11.boot[ind.boot] = coef(fit.lasso.boot)[ 2:(z_idx_len+1) ]
        b12.boot[ind.boot] = coef(fit.lasso.boot)[(z_idx_len+2):(2*z_idx_len+1)]
      } ## end the bootstrap with w.boot, a distribution of w_j|z_j.
      
      w_boot = abs( b11.boot + b12.boot) - abs(b11.boot - b12.boot)
    }
    if(var.est==TRUE){
      list(w=w, w_boot=w_boot)
    }else{
      w
    }
  }
  
  #stopCluster(cl)
  
  if(var.est==TRUE){
    w_vec =  unlist(lapply(para_list,function(x){x[[1]]}))
    w_boot =  array(unlist(lapply(para_list,function(x){x[[2]]})), c(rep.boot, p)) 
    gm.var = gm_var( w_vec, w_boot, q)$variance
  }else{
    w_vec =  unlist(para_list)
  }
  
  
  Tt = knockoff.threshold(w_vec, fdr = q, offset = 1)
  gm_selected = sort(which(w_vec >= Tt))
  
  
  if(var.est== TRUE){
    return(results= list(gm_selected=gm_selected, gm_statistics= w_vec, gm_var= gm.var))
  }else{
    return(results= list(gm_selected=gm_selected, gm_statistics= w_vec))
  }
  
}


###############################################################################  


knockoff.threshold <- function(W, fdr=0.10, offset=1) {
  if(offset!=1 && offset!=0) {
    stop('Input offset must be either 0 or 1')
  }
  ts = sort(c(0, abs(W)))
  ratio = sapply(ts, function(t)
    (offset + sum(W <= -t)) / max(1, sum(W >= t)))
  ok = which(ratio <= fdr)
  ifelse(length(ok) > 0, ts[ok[1]], Inf)
}