K_BH_BBH_E_A005 = function(n,p,k,amplitude,alpha,rho){
  # Main function change the FDR level to 0.05
  
  library(scalreg);  
  library(glmnet);
  library(knockoff);
  
  # Generate the variables from a multivariate normal distribution
  mu = rep(0,p)
  
  # Change the structure of Sigma
  Sigma = matrix(data = 0, nrow = p, ncol = p)
  for (i in 1:p) {
    for (j in 1:p){
      Sigma[i,j] = rho*(ceiling(i/20)==ceiling(j/20))
    }
  }
  diag(Sigma) = 1
  X = matrix(rnorm(n*p),n) %*% chol(Sigma)
  X = scale(X, center = TRUE, scale = FALSE)
  
  # Generate the response from a linear model
  nonzero = sample(p, k)
  beta = amplitude * (1:p %in% nonzero)
  y = X %*% beta + rnorm(n)
  
  # Transformation matrix
  ATrans = rbind(diag(p),diag(p))
  BTrans = rbind(diag(p),-diag(p))
  Trans = cbind(ATrans, BTrans)
  
  # Run the knockoff filter to achieve MX knockoff X
  second_order_MX = function(X) create.second_order(X, method='asdp')
  # This is the only difference from the original function
  result = knockoff.filter(X, y, knockoffs = second_order_MX, fdr = alpha)
  KX = result$Xk
  
  # Augmented linear model and debiased lasso
  AX = cbind(X,KX)
  fit = cv.glmnet(AX, y, nlambda=100, alpha=1, standardize=T)
  Ab = as.vector(coef(fit, s=fit$lambda.1se))[-1]
  
  G = t(AX)%*%AX/n
  Inv = InverseLinfty(G, n)
  
  Adb = as.numeric(Ab + (Inv%*%t(AX)%*%(y - AX %*% Ab))/n)
  w2 = Adb[1:p] - Adb[(p+1):(2*p)]
  w1 = Adb[1:p] + Adb[(p+1):(2*p)]
  
  # Scaled lasso
  Scaledlasso = scalreg(AX, y)
  hsigma = Scaledlasso$hsigma
  
  # Test statistic
  Cov = Trans%*%Inv%*%G%*%t(Inv)%*%Trans
  # Cov = Trans%*%Inv%*%Trans
  t1 = sqrt(n)*w1/(hsigma*sqrt(diag(Cov[1:p, 1:p])))
  t2 = sqrt(n)*w2/(hsigma*sqrt(diag(Cov[(p+1):(2*p), (p+1):(2*p)])))
  
  # p-value
  p1 = 2*(1 - pnorm(abs(t1)))
  p2 = 2*(1 - pnorm(abs(t2)))
  p21 = p2
  
  # adjusted p-value
  p2a = p.adjust(p2, method = "BH")
  
  # Knockoff-assisted BH
  index2 = seq(along = p2a)[p2a <= alpha]
  
  # Knockoff-assisted BBH
  p21[p1 >= sqrt(alpha)] = 1
  p21a = p.adjust(p21, method = "BH")
  index21 = seq(along = p21a)[p21a <= sqrt(alpha)]
  
  # Calculate fdp
  fdp = function(selected) sum(beta[selected] == 0) / max(1, length(selected))
  
  # Calculate power
  power = function(selected) sum(beta[selected] != 0) / sum(beta != 0)
  
  fdp_KBH = fdp(index2)
  pwr_KBH = power(index2)
  fdp_KBBH = fdp(index21)
  pwr_KBBH = power(index21)
  fdp_K = fdp(result$selected)
  pwr_K = power(result$selected)
  
  rst = cbind(fdp_KBH, pwr_KBH, fdp_KBBH, pwr_KBBH, fdp_K, pwr_K)
  return (rst)
}

