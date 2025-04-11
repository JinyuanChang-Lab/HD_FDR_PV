BBH = function(n,p,k,amplitude,alpha,rho){
  
  # Generate the variables from a multivariate normal distribution
  mu = rep(0,p)
  Sigma = toeplitz(rho^(0:(p-1)))
  X = matrix(rnorm(n*p),n) %*% chol(Sigma)
  X = scale(X, center = TRUE, scale = FALSE)
  
  # Generate the response from a linear model
  nonzero = sample(p, k)
  beta = amplitude * (1:p %in% nonzero)
  y = X %*% beta + rnorm(n)
  
  lm.fit = lm(y ~ X - 1)
  p2 = coef(summary(lm.fit))[,4]
 
  # Knockoff-assisted BBH
  p2a = p.adjust(p2, method = "BH")
  index = seq(along = p2a)[p2a <= alpha]
  
  # Calculate fdp
  fdp = function(selected) sum(beta[selected] == 0) / max(1, length(selected))
  
  # Calculate power
  power = function(selected) sum(beta[selected] != 0) / sum(beta != 0)
  
  fdp_BBH = fdp(index)
  pwr_BBH = power(index)
  
  rst = cbind(fdp_BBH, pwr_BBH)
  return (rst)
}

