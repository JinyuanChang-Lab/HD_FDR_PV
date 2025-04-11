setwd("C:/Users/朱正天/Desktop/Knockoff_code/realdata")

#####################################################################
# fdr = 0.05
cnames = c("Method1", "Method2", "GM", "Knockoff", "B-BH")
rnames = c("true_discoveries", "false_discoveries")

#########
apv005 = matrix(c(13,2,
                  11,1,
                  17,0,
                  15,0,
                  6,0), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(apv005, main = "Resistance to APV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)

#########
atv005 = matrix(c(16,1,
                  16,1,
                  19,7,
                  0,0,
                  0,0), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(atv005, main = "Resistance to ATV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)


#########
idv005 = matrix(c(12,4,
                  15,4,
                  21,7,
                  0,0,
                  12,0), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(idv005, main = "Resistance to IDV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)




#########
lpv005 = matrix(c(13,4,
                  11,2,
                  18,2,
                  0,0,
                  5,0), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(lpv005, main = "Resistance to LPV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)


#########
nfv005 = matrix(c(14,4,
                  15,3,
                  18,4,
                  0,0,
                  10,1), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(nfv005, main = "Resistance to NFV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)


#########
rtv005 = matrix(c(12,2,
                  12,1,
                  20,8,
                  0,0,
                  7,1), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(rtv005, main = "Resistance to RTV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)





#########
apv01 = matrix(c(14,2,
                  10,1,
                  19,4,
                  16,0,
                  7,1), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(apv01, main = "Resistance to APV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)


#########
atv01 = matrix(c(19,8,
                  18,5,
                  22,8,
                  18,0,
                 0,0), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(atv01, main = "Resistance to ATV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)


#########
idv01 = matrix(c(14,4,
                  15,3,
                  22,12,
                  9,1,
                  14,2), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(idv01, main = "Resistance to IDV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)



#########
lpv01 = matrix(c(16,5,
                  15,5,
                  17,4,
                  13,1,
                 5,0), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(lpv01, main = "Resistance to LPV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)


#########
nfv01 = matrix(c(14,3,
                  14,3,
                  24,14,
                  17,1,
                  12,3), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(nfv01, main = "Resistance to NFV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)



#########
rtv01 = matrix(c(11,3,
                  12,2,
                  21,10,
                  0,0,
                  9,1), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(rtv01, main = "Resistance to RTV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)




#########
apv02 = matrix(c(15,3,
                 14,2,
                 20,7,
                 19,3,
                 9,2), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(apv02, main = "Resistance to APV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)


#########
atv02 = matrix(c(17,2,
                 17,2,
                 24,9,
                 22,9,
                 0,0), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(atv02, main = "Resistance to ATV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)


#########
idv02 = matrix(c(14,4,
                 15,3,
                 23,13,
                 19,12,
                 15,4), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(idv02, main = "Resistance to IDV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)



#########
lpv02 = matrix(c(15,3,
                 15,3,
                 19,9,
                 16,1,
                 5,0), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(lpv02, main = "Resistance to LPV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)



#########
nfv02 = matrix(c(15,3,
                 15,3,
                 25,13,
                 21,2,
                 12,6), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(nfv02, main = "Resistance to NFV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)


#########
rtv02 = matrix(c(13,3,
                 14,2,
                 21,14,
                 19,8,
                 11,2), nrow = 2, ncol = 5, byrow = FALSE, dimnames = list(rnames, cnames))

barplot(rtv02, main = "Resistance to RTV", 
        col = c('navy','orange'), ylim = c(0,40), cex.axis = 2, cex.main = 2, cex.names = 1.5)











