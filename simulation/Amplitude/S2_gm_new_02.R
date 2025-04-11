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
source("gm_new.R")
source("GMtest_new.R")


set.seed(2024)

# Default Settings
#n = 200         # default number of observations, can take 500
#p = 1*n         # default number of variables, can take (1.5*n) and (2*n)
#k = 0.04*p      # default number of variables with nonzero coefficients, can take 
# 0.02*p, 0.06*p and 0.08*p
amplitude = 1    # default signal amplitude for noise level = 1, can take
# 0.5,1.5 and 2
alpha = 0.2     # change FDR level to 0.05
rho = 0.4        # default AR 1 coefficient, can take 0.2,0.6 and 0.8

# AR1_sparsity simulation


cl <- makeCluster(32, type="SOCK")
registerDoParallel(cl)





#####################################################################################################################


###

rgm_n200_p200_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,200,(200*0.04),0.1,alpha,2)
}

rgm_n200_p300_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,300,(300*0.04),0.1,alpha,2)
}

rgm_n200_p400_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,400,(400*0.04),0.1,alpha,2)
}

###

rgm_n200_p200_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,200,(200*0.04),0.15,alpha,2)
}

rgm_n200_p300_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,300,(300*0.04),0.15,alpha,2)
}

rgm_n200_p400_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,400,(400*0.04),0.15,alpha,2)
}

###

rgm_n200_p200_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,200,(200*0.04),0.2,alpha,2)
}

rgm_n200_p300_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,300,(300*0.04),0.2,alpha,2)
}

rgm_n200_p400_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,400,(400*0.04),0.2,alpha,2)
}

###

rgm_n200_p200_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,200,(200*0.04),0.25,alpha,2)
}

rgm_n200_p300_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,300,(300*0.04),0.25,alpha,2)
}

rgm_n200_p400_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,400,(400*0.04),0.25,alpha,2)
}

###

rgm_n200_p200_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,200,(200*0.04),0.3,alpha,2)
}

rgm_n200_p300_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,300,(300*0.04),0.3,alpha,2)
}

rgm_n200_p400_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,400,(400*0.04),0.3,alpha,2)
}

###

rgm_n200_p200_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,200,(200*0.04),0.35,alpha,2)
}

rgm_n200_p300_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,300,(300*0.04),0.35,alpha,2)
}

rgm_n200_p400_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,400,(400*0.04),0.35,alpha,2)
}

###

rgm_n200_p200_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,200,(200*0.04),0.4,alpha,2)
}

rgm_n200_p300_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,300,(300*0.04),0.4,alpha,2)
}

rgm_n200_p400_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,400,(400*0.04),0.4,alpha,2)
}

###

rgm_n200_p200_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,200,(200*0.04),0.45,alpha,2)
}

rgm_n200_p300_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,300,(300*0.04),0.45,alpha,2)
}

rgm_n200_p400_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,400,(400*0.04),0.45,alpha,2)
}


######
rgm_n200_p200_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,200,(200*0.04),0.5,alpha,2)
}

rgm_n200_p300_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,300,(300*0.04),0.5,alpha,2)
}

rgm_n200_p400_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(200,400,(400*0.04),0.5,alpha,2)
}
##################################################################################################################

 










rgm_n500_p500_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,500,(500*0.04),0.1,alpha,2)
}

rgm_n500_p750_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,750,(750*0.04),0.1,alpha,2)
}

rgm_n500_p1000_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,1000,(1000*0.04),0.1,alpha,2)
}

###

rgm_n500_p500_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,500,(500*0.04),0.15,alpha,2)
}

rgm_n500_p750_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,750,(750*0.04),0.15,alpha,2)
}

rgm_n500_p1000_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,1000,(1000*0.04),0.15,alpha,2)
}

###

rgm_n500_p500_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,500,(500*0.04),0.2,alpha,2)
}

rgm_n500_p750_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,750,(750*0.04),0.2,alpha,2)
}

rgm_n500_p1000_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,1000,(1000*0.04),0.2,alpha,2)
}

###

rgm_n500_p500_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,500,(500*0.04),0.25,alpha,2)
}

rgm_n500_p750_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,750,(750*0.04),0.25,alpha,2)
}

rgm_n500_p1000_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,1000,(1000*0.04),0.25,alpha,2)
}

###

rgm_n500_p500_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,500,(500*0.04),0.3,alpha,2)
}

rgm_n500_p750_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,750,(750*0.04),0.3,alpha,2)
}

rgm_n500_p1000_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,1000,(1000*0.04),0.3,alpha,2)
}

###

rgm_n500_p500_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,500,(500*0.04),0.35,alpha,2)
}

rgm_n500_p750_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,750,(750*0.04),0.35,alpha,2)
}

rgm_n500_p1000_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,1000,(1000*0.04),0.35,alpha,2)
}

###

rgm_n500_p500_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,500,(500*0.04),0.4,alpha,2)
}

rgm_n500_p750_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,750,(750*0.04),0.4,alpha,2)
}

rgm_n500_p1000_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,1000,(1000*0.04),0.4,alpha,2)
}

###

rgm_n500_p500_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,500,(500*0.04),0.45,alpha,2)
}

rgm_n500_p750_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,750,(750*0.04),0.45,alpha,2)
}

rgm_n500_p1000_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,1000,(1000*0.04),0.45,alpha,2)
}


######
rgm_n500_p500_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,500,(500*0.04),0.5,alpha,2)
}

rgm_n500_p750_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,750,(750*0.04),0.5,alpha,2)
}

rgm_n500_p1000_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest_new(500,1000,(1000*0.04),0.5,alpha,2)
}


save.image(file = "/home/zhuliping/zzt/HD_FDR_KBBH/S2_gm_new_02.RData")

stopCluster(cl)


