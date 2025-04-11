library(Matrix);
library(glmnet);
library(expm);
library(flare);
library(knockoff);
library(doParallel);
#library(ranger);
library(scalreg);
library(sparseMatEst);

setwd("/home/zhuliping/zzt/HD_FDR_KBBH")

source("Inverse.R")
source("MXK_KBH_KBBH.R")
source("MXK_KBH_KBBH_E.R")
source("gm_new.R")
source("GMtest_new.R")

set.seed(2024)

# Default Settings
#n = 200         # default number of observations, can take 500
#p = 1*n         # default number of variables, can take (1.5*n) and (2*n)
#k = 0.04*p      # default number of variables with nonzero coefficients, can take 
# 0.02*p, 0.06*p and 0.08*p
amplitude = 0    # default signal amplitude for noise level = 1, can take
# 0.5,1.5 and 2
alpha = 0.2     # change FDR level to 0.05
rho = 0.4        # default AR 1 coefficient, can take 0.2,0.6 and 0.8



cl <- makeCluster(32, type="SOCK")
registerDoParallel(cl)


##########################################################

rgm_0n200_p200 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,200,0,amplitude,alpha,1)
}

rgm_0n200_p240 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,240,0,amplitude,alpha,1)
}

rgm_0n200_p280 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,280,0,amplitude,alpha,1)
}

rgm_0n200_p320 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,320,0,amplitude,alpha,1)
}

rgm_0n200_p360 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,360,0,amplitude,alpha,1)
}

rgm_0n200_p400 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,400,0,amplitude,alpha,1)
}


######################################################

rgm_0n500_p500 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,500,0,amplitude,alpha,1)
}

rgm_0n500_p600 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,600,0,amplitude,alpha,1)
}

rgm_0n500_p700 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,700,0,amplitude,alpha,1)
}

rgm_0n500_p800 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,800,0,amplitude,alpha,1)
}

rgm_0n500_p900 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,900,0,amplitude,alpha,1)
}

rgm_0n500_p1000 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,1000,0,amplitude,alpha,1)
}

print("gm IND 02 is completed")




##########################################################

rgm_n200_p200 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,200,0,amplitude,alpha,2)
}

rgm_n200_p240 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,240,0,amplitude,alpha,2)
}

rgm_n200_p280 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,280,0,amplitude,alpha,2)
}

rgm_n200_p320 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,320,0,amplitude,alpha,2)
}

rgm_n200_p360 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,360,0,amplitude,alpha,2)
}

rgm_n200_p400 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,400,0,amplitude,alpha,2)
}


######################################################

rgm_n500_p500 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,500,0,amplitude,alpha,2)
}

rgm_n500_p600 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,600,0,amplitude,alpha,2)
}

rgm_n500_p700 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,700,0,amplitude,alpha,2)
}

rgm_n500_p800 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,800,0,amplitude,alpha,2)
}

rgm_n500_p900 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,900,0,amplitude,alpha,2)
}

rgm_n500_p1000 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,1000,0,amplitude,alpha,2)
}

print("gm AR1 02 is completed")


##########################################################

rgm_En200_p200 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,200,0,amplitude,alpha,3)
}

rgm_En200_p240 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,240,0,amplitude,alpha,3)
}

rgm_En200_p280 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,280,0,amplitude,alpha,3)
}

rgm_En200_p320 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,320,0,amplitude,alpha,3)
}

rgm_En200_p360 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,360,0,amplitude,alpha,3)
}

rgm_En200_p400 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(200,400,0,amplitude,alpha,3)
}


######################################################

rgm_En500_p500 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,500,0,amplitude,alpha,3)
}

rgm_En500_p600 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,600,0,amplitude,alpha,3)
}

rgm_En500_p700 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,700,0,amplitude,alpha,3)
}

rgm_En500_p800 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,800,0,amplitude,alpha,3)
}

rgm_En500_p900 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,900,0,amplitude,alpha,3)
}

rgm_En500_p1000 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  GMtest_new(500,1000,0,amplitude,alpha,3)
}

print("gm Block 02 is completed")




save.image(file = "/home/zhuliping/zzt/HD_FDR_KBBH/S1_dim_gm_new_02.RData")

stopCluster(cl)


