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
source("KBBHw_pre.R")
source("gm.R")
source("GMtest.R")


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



# amp level 0.1

r_n800_p800_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(800,800,15,0.1,alpha,rho)
}


print("amp level 0.1 is completed")


# amp level 0.15

r_n800_p800_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(800,800,15,0.15,alpha,rho)
}


print("amp level 0.15 is completed")


# amp level 0.2

r_n800_p800_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(800,800,15,0.2,alpha,rho)
}


print("amp level 0.2 is completed")


# Consider different n and p with default k ratio 0.04*p

r_n800_p800_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(800,800,15,0.25,alpha,rho)
}


print("amp level 0.25 is completed")


# amp level 0.3

r_n800_p800_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(800,800,15,0.3,alpha,rho)
}


print("amp level 0.3 is completed")


# amp level 0.35

r_n800_p800_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(800,800,15,0.35,alpha,rho)
}

print("amp level 0.35 is completed")


# amp level 0.4

r_n800_p800_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(800,800,15,0.4,alpha,rho)
}


print("amp level 0.4 is completed")

# amp level 0.45

r_n800_p800_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(800,800,15,0.45,alpha,rho)
}


print("amp level 0.45 is completed")

# amp level 0.5

r_n800_p800_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(800,800,15,0.5,alpha,rho)
}


print("amp level 0.5 is completed")


###############################################################################




#####################################################################################################################


rgm_n800_p800_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(800,800,15,0.1,alpha,2)
}


###

rgm_n800_p800_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(800,800,15,0.15,alpha,2)
}


###

rgm_n800_p800_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(800,800,15,0.2,alpha,2)
}


###

rgm_n800_p800_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(800,800,15,0.25,alpha,2)
}


###

rgm_n800_p800_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(800,800,15,0.3,alpha,2)
}


###

rgm_n800_p800_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(800,800,15,0.35,alpha,2)
}


###

rgm_n800_p800_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(800,800,15,0.4,alpha,2)
}


###

rgm_n800_p800_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(800,800,15,0.45,alpha,2)
}



######
rgm_n800_p800_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(800,800,15,0.5,alpha,2)
}


##################################################################################################################
print("gm 005 is completed")




# amp level 0.1

r_On800_p800_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(800,800,15,0.1,alpha,rho)
}


print("amp level 0.1 is completed")


# amp level 0.15

r_On800_p800_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(800,800,15,0.15,alpha,rho)
}


print("amp level 0.15 is completed")


# amp level 0.2

r_On800_p800_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(800,800,15,0.2,alpha,rho)
}


print("amp level 0.2 is completed")


# Consider different n and p with default k ratio 0.04*p

r_On800_p800_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(800,800,15,0.25,alpha,rho)
}


print("amp level 0.25 is completed")


# amp level 0.3

r_On800_p800_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(800,800,15,0.3,alpha,rho)
}


print("amp level 0.3 is completed")


# amp level 0.35

r_On800_p800_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(800,800,15,0.35,alpha,rho)
}


print("amp level 0.35 is completed")


# amp level 0.4

r_On800_p800_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(800,800,15,0.4,alpha,rho)
}


print("amp level 0.4 is completed")

# amp level 0.45

r_On800_p800_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(800,800,15,0.45,alpha,rho)
}


print("amp level 0.45 is completed")

# amp level 0.5

r_On800_p800_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(800,800,15,0.5,alpha,rho)
}


print("amp level 0.5 is completed")


###############################################################################



# amp level 0.1

r_n600_p600_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(600,600,15,0.1,alpha,rho)
}


print("amp level 0.1 is completed")


# amp level 0.15

r_n600_p600_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(600,600,15,0.15,alpha,rho)
}


print("amp level 0.15 is completed")


# amp level 0.2

r_n600_p600_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(600,600,15,0.2,alpha,rho)
}


print("amp level 0.2 is completed")


# Consider different n and p with default k ratio 0.04*p

r_n600_p600_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(600,600,15,0.25,alpha,rho)
}


print("amp level 0.25 is completed")


# amp level 0.3

r_n600_p600_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(600,600,15,0.3,alpha,rho)
}


print("amp level 0.3 is completed")


# amp level 0.35

r_n600_p600_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(600,600,15,0.35,alpha,rho)
}

print("amp level 0.35 is completed")


# amp level 0.4

r_n600_p600_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(600,600,15,0.4,alpha,rho)
}


print("amp level 0.4 is completed")

# amp level 0.45

r_n600_p600_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(600,600,15,0.45,alpha,rho)
}


print("amp level 0.45 is completed")

# amp level 0.5

r_n600_p600_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(600,600,15,0.5,alpha,rho)
}


print("amp level 0.5 is completed")


###############################################################################




#####################################################################################################################


rgm_n600_p600_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(600,600,15,0.1,alpha,2)
}


###

rgm_n600_p600_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(600,600,15,0.15,alpha,2)
}


###

rgm_n600_p600_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(600,600,15,0.2,alpha,2)
}


###

rgm_n600_p600_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(600,600,15,0.25,alpha,2)
}


###

rgm_n600_p600_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(600,600,15,0.3,alpha,2)
}


###

rgm_n600_p600_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(600,600,15,0.35,alpha,2)
}


###

rgm_n600_p600_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(600,600,15,0.4,alpha,2)
}


###

rgm_n600_p600_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(600,600,15,0.45,alpha,2)
}



######
rgm_n600_p600_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(600,600,15,0.5,alpha,2)
}


##################################################################################################################
print("gm 005 is completed")




# amp level 0.1

r_On600_p600_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(600,600,15,0.1,alpha,rho)
}


print("amp level 0.1 is completed")


# amp level 0.15

r_On600_p600_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(600,600,15,0.15,alpha,rho)
}


print("amp level 0.15 is completed")


# amp level 0.2

r_On600_p600_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(600,600,15,0.2,alpha,rho)
}


print("amp level 0.2 is completed")


# Consider different n and p with default k ratio 0.04*p

r_On600_p600_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(600,600,15,0.25,alpha,rho)
}


print("amp level 0.25 is completed")


# amp level 0.3

r_On600_p600_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(600,600,15,0.3,alpha,rho)
}


print("amp level 0.3 is completed")


# amp level 0.35

r_On600_p600_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(600,600,15,0.35,alpha,rho)
}


print("amp level 0.35 is completed")


# amp level 0.4

r_On600_p600_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(600,600,15,0.4,alpha,rho)
}


print("amp level 0.4 is completed")

# amp level 0.45

r_On600_p600_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(600,600,15,0.45,alpha,rho)
}


print("amp level 0.45 is completed")

# amp level 0.5

r_On600_p600_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(600,600,15,0.5,alpha,rho)
}


print("amp level 0.5 is completed")


###############################################################################




# amp level 0.1

r_n400_p400_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(400,400,15,0.1,alpha,rho)
}


print("amp level 0.1 is completed")


# amp level 0.15

r_n400_p400_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(400,400,15,0.15,alpha,rho)
}


print("amp level 0.15 is completed")


# amp level 0.2

r_n400_p400_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(400,400,15,0.2,alpha,rho)
}


print("amp level 0.2 is completed")


# Consider different n and p with default k ratio 0.04*p

r_n400_p400_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(400,400,15,0.25,alpha,rho)
}


print("amp level 0.25 is completed")


# amp level 0.3

r_n400_p400_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(400,400,15,0.3,alpha,rho)
}


print("amp level 0.3 is completed")


# amp level 0.35

r_n400_p400_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(400,400,15,0.35,alpha,rho)
}

print("amp level 0.35 is completed")


# amp level 0.4

r_n400_p400_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(400,400,15,0.4,alpha,rho)
}


print("amp level 0.4 is completed")

# amp level 0.45

r_n400_p400_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(400,400,15,0.45,alpha,rho)
}


print("amp level 0.45 is completed")

# amp level 0.5

r_n400_p400_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  KBBHw_pre(400,400,15,0.5,alpha,rho)
}


print("amp level 0.5 is completed")


###############################################################################




#####################################################################################################################


rgm_n400_p400_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(400,400,15,0.1,alpha,2)
}


###

rgm_n400_p400_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(400,400,15,0.15,alpha,2)
}


###

rgm_n400_p400_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(400,400,15,0.2,alpha,2)
}


###

rgm_n400_p400_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(400,400,15,0.25,alpha,2)
}


###

rgm_n400_p400_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(400,400,15,0.3,alpha,2)
}


###

rgm_n400_p400_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(400,400,15,0.35,alpha,2)
}


###

rgm_n400_p400_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(400,400,15,0.4,alpha,2)
}


###

rgm_n400_p400_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(400,400,15,0.45,alpha,2)
}



######
rgm_n400_p400_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('glmnet', 'doParallel','foreach')) %dopar% {
  GMtest(400,400,15,0.5,alpha,2)
}


##################################################################################################################
print("gm 005 is completed")




# amp level 0.1

r_On400_p400_amp0.1 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(400,400,15,0.1,alpha,rho)
}


print("amp level 0.1 is completed")


# amp level 0.15

r_On400_p400_amp0.15 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(400,400,15,0.15,alpha,rho)
}


print("amp level 0.15 is completed")


# amp level 0.2

r_On400_p400_amp0.2 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(400,400,15,0.2,alpha,rho)
}


print("amp level 0.2 is completed")


# Consider different n and p with default k ratio 0.04*p

r_On400_p400_amp0.25 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(400,400,15,0.25,alpha,rho)
}


print("amp level 0.25 is completed")


# amp level 0.3

r_On400_p400_amp0.3 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(400,400,15,0.3,alpha,rho)
}


print("amp level 0.3 is completed")


# amp level 0.35

r_On400_p400_amp0.35 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(400,400,15,0.35,alpha,rho)
}


print("amp level 0.35 is completed")


# amp level 0.4

r_On400_p400_amp0.4 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(400,400,15,0.4,alpha,rho)
}


print("amp level 0.4 is completed")

# amp level 0.45

r_On400_p400_amp0.45 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(400,400,15,0.45,alpha,rho)
}


print("amp level 0.45 is completed")

# amp level 0.5

r_On400_p400_amp0.5 <- foreach(i = 1:100, .combine = rbind, .packages = c('knockoff', 'scalreg', 'glmnet')) %dopar% {
  K_BH_BBH(400,400,15,0.5,alpha,rho)
}


print("amp level 0.5 is completed")


###############################################################################





save.image(file = "/home/zhuliping/zzt/HD_FDR_KBBH/S4_02.RData")

stopCluster(cl)


