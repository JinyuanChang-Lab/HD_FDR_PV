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
source("FX_KBH_KBBH.R")
source("BBH.R")

set.seed(2024)

# Default Settings
#n = 200         # default number of observations, can take 500
#p = 1*n         # default number of variables, can take (1.5*n) and (2*n)
#k = 0.04*p      # default number of variables with nonzero coefficients, can take 
# 0.02*p, 0.06*p and 0.08*p
# amplitude = 1    # default signal amplitude for noise level = 1, can take
# 0.5,1.5 and 2
alpha = 0.05     # default FDR level
rho = 0.4        # default AR 1 coefficient, can take 0.2,0.6 and 0.8

# AR1_new simulation


cl <- makeCluster(32, type="SOCK")
registerDoParallel(cl)

# Test all setting in this script!!!
######################################################################


r_A005n200_p40_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(100,50,(50*0.04),0.2,alpha,rho)
}


r_A005n200_p40_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(100,50,(50*0.04),0.4,alpha,rho)
}


r_A005n200_p40_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(100,50,(50*0.04),0.6,alpha,rho)
}


r_A005n200_p40_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(100,50,(50*0.04),0.8,alpha,rho)
}


r_A005n200_p40_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(100,50,(50*0.04),1,alpha,rho)
}

###################################################################


r_A005n500_p100_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(200,100,(100*0.04),0.2,alpha,rho)
}

r_A005n500_p100_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(200,100,(100*0.04),0.4,alpha,rho)
}

r_A005n500_p100_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(200,100,(100*0.04),0.6,alpha,rho)
}

r_A005n500_p100_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(200,100,(100*0.04),0.8,alpha,rho)
}

r_A005n500_p100_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(200,100,(100*0.04),1,alpha,rho)
}


#####################################################################


r_A005n1000_p100_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(400,200,(200*0.04),0.2,alpha,rho)
}

r_A005n1000_p100_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(400,200,(200*0.04),0.4,alpha,rho)
}

r_A005n1000_p100_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(400,200,(200*0.04),0.6,alpha,rho)
}

r_A005n1000_p100_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(400,200,(200*0.04),0.8,alpha,rho)
}

r_A005n1000_p100_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(400,200,(200*0.04),1,alpha,rho)
}

######################################################################

rn200_p40_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(100,50,(50*0.04),0.2,(2*alpha),rho)
}


rn200_p40_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(100,50,(50*0.04),0.4,(2*alpha),rho)
}


rn200_p40_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(100,50,(50*0.04),0.6,(2*alpha),rho)
}


rn200_p40_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(100,50,(50*0.04),0.8,(2*alpha),rho)
}


rn200_p40_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(100,50,(50*0.04),1,(2*alpha),rho)
}

###################################################################


rn500_p100_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(200,100,(100*0.04),0.2,(2*alpha),rho)
}

rn500_p100_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(200,100,(100*0.04),0.4,(2*alpha),rho)
}

rn500_p100_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(200,100,(100*0.04),0.6,(2*alpha),rho)
}

rn500_p100_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(200,100,(100*0.04),0.8,(2*alpha),rho)
}

rn500_p100_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(200,100,(100*0.04),1,(2*alpha),rho)
}


#####################################################################


rn1000_p100_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(400,200,(200*0.04),0.2,(2*alpha),rho)
}

rn1000_p100_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(400,200,(200*0.04),0.4,(2*alpha),rho)
}

rn1000_p100_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(400,200,(200*0.04),0.6,(2*alpha),rho)
}

rn1000_p100_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(400,200,(200*0.04),0.8,(2*alpha),rho)
}

rn1000_p100_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  FK_BH_BBH(400,200,(200*0.04),1,(2*alpha),rho)
}


###################################################################################


r_A005bhn200_p40_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(100,50,(50*0.04),0.2,alpha,rho)
}


r_A005bhn200_p40_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(100,50,(50*0.04),0.4,alpha,rho)
}


r_A005bhn200_p40_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(100,50,(50*0.04),0.6,alpha,rho)
}


r_A005bhn200_p40_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(100,50,(50*0.04),0.8,alpha,rho)
}


r_A005bhn200_p40_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(100,50,(50*0.04),1,alpha,rho)
}

###################################################################


r_A005bhn500_p100_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(200,100,(100*0.04),0.2,alpha,rho)
}

r_A005bhn500_p100_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(200,100,(100*0.04),0.4,alpha,rho)
}

r_A005bhn500_p100_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(200,100,(100*0.04),0.6,alpha,rho)
}

r_A005bhn500_p100_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(200,100,(100*0.04),0.8,alpha,rho)
}

r_A005bhn500_p100_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(200,100,(100*0.04),1,alpha,rho)
}


#####################################################################


r_A005bhn1000_p100_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(400,200,(200*0.04),0.2,alpha,rho)
}

r_A005bhn1000_p100_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(400,200,(200*0.04),0.4,alpha,rho)
}

r_A005bhn1000_p100_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(400,200,(200*0.04),0.6,alpha,rho)
}

r_A005bhn1000_p100_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(400,200,(200*0.04),0.8,alpha,rho)
}

r_A005bhn1000_p100_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(400,200,(200*0.04),1,alpha,rho)
}

######################################################################


r_bhn200_p40_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(100,50,(50*0.04),0.2,(2*alpha),rho)
}


r_bhn200_p40_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(100,50,(50*0.04),0.4,(2*alpha),rho)
}


r_bhn200_p40_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(100,50,(50*0.04),0.6,(2*alpha),rho)
}


r_bhn200_p40_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(100,50,(50*0.04),0.8,(2*alpha),rho)
}


r_bhn200_p40_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(100,50,(50*0.04),1,(2*alpha),rho)
}

###################################################################


r_bhn500_p100_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(200,100,(100*0.04),0.2,(2*alpha),rho)
}

r_bhn500_p100_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(200,100,(100*0.04),0.4,(2*alpha),rho)
}

r_bhn500_p100_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(200,100,(100*0.04),0.6,(2*alpha),rho)
}

r_bhn500_p100_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(200,100,(100*0.04),0.8,(2*alpha),rho)
}

r_bhn500_p100_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(200,100,(100*0.04),1,(2*alpha),rho)
}


#####################################################################


r_bhn1000_p100_amp2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(400,200,(200*0.04),0.2,(2*alpha),rho)
}

r_bhn1000_p100_amp4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(400,200,(200*0.04),0.4,(2*alpha),rho)
}

r_bhn1000_p100_amp6 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(400,200,(200*0.04),0.6,(2*alpha),rho)
}

r_bhn1000_p100_amp8 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(400,200,(200*0.04),0.8,(2*alpha),rho)
}

r_bhn1000_p100_amp10 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  BBH(400,200,(200*0.04),1,(2*alpha),rho)
}


save.image(file = "/home/zhuliping/zzt/HD_FDR_KBBH/S5.RData")

stopCluster(cl)


