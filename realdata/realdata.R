setwd("C:/Users/朱正天/Desktop/Knockoff_code/realdata")

library(knockoff)
library(glmnet)
library(scalreg)
library(doParallel)

source("gm.R")
source("Inverse_real.R")# 50 max iterations

#Test the PI drug
drug_class = 'PI'

#Download the data and read it into data frames.

base_url = 'http://hivdb.stanford.edu/pages/published_analysis/genophenoPNAS2006'
#gene_url = paste(base_url, 'DATA', paste0(drug_class, '_DATA.txt'), sep='/')
#gene_df = read.delim(gene_url, na.string = c('NA', ''), stringsAsFactors = FALSE)

tsm_url = paste(base_url, 'MUTATIONLISTS', 'NP_TSM', drug_class, sep='/')
tsm_df = read.delim(tsm_url, header = FALSE, stringsAsFactors = FALSE)
names(tsm_df) = c('Position', 'Mutations')

#For the gene_df, read it manually
gene_df = read.delim("PI_DATA.txt", na.string = c('NA', ''), stringsAsFactors = FALSE)


#Remove error flags or nonstandard mutation codes.

grepl_rows <- function(pattern, df) {
  cell_matches = apply(df, c(1,2), function(x) grepl(pattern, x))
  apply(cell_matches, 1, all)
}

pos_start = which(names(gene_df) == 'P1')
pos_cols = seq.int(pos_start, ncol(gene_df))
valid_rows = grepl_rows('^(\\.|-|[A-Zid]+)$', gene_df[,pos_cols])
gene_df = gene_df[valid_rows,]

# Flatten a matrix to a vector with names from concatenating row/column names.
flatten_matrix <- function(M, sep='.') {
  x <- c(M)
  names(x) <- c(outer(rownames(M), colnames(M),
                      function(...) paste(..., sep=sep)))
  x
}

# Construct preliminary design matrix.
muts = c(LETTERS, 'i', 'd')
X = outer(muts, as.matrix(gene_df[,pos_cols]), Vectorize(grepl))
X = aperm(X, c(2,3,1))
dimnames(X)[[3]] <- muts
X = t(apply(X, 1, flatten_matrix))
mode(X) <- 'numeric'

# Remove any mutation/position pairs that never appear in the data.
X = X[,colSums(X) != 0]

# Extract response matrix.
Y = gene_df[,4:(pos_start-1)]


# Compare 4 methods (M1 and M2 with asdp MX knockoffs, clime inverting; GM and fixed knockoff).
fourmethods <- function (X, y, q) {
  # Log-transform the drug resistance measurements.
  y = log(y)
  
  # Remove patients with missing measurements.
  missing = is.na(y)
  y = y[!missing]
  X = X[!missing,]
  
  # Remove predictors that appear less than 3 times.
  X = X[,colSums(X) >= 3]
  
  # Remove duplicate predictors.
  X = X[,colSums(abs(cor(X)-1) < 1e-4) == 1]
  
  
  # Run Method1 and Method2 and MX knockoff
  p = ncol(X)
  n = nrow(X)
  
  # Transformation matrix
  ATrans = rbind(diag(p),diag(p))
  BTrans = rbind(diag(p),-diag(p))
  Trans = cbind(ATrans, BTrans)
  
  # Run the knockoff filter to achieve knockoff X
  KX = create.second_order(X, method = c("asdp"), shrink = F)
  
  # Augmented linear model 
  AX = cbind(X,KX)
  fit = cv.glmnet(AX, y, nlambda=100, alpha=1, standardize=T)
  Ab = as.vector(coef(fit, s=fit$lambda.1se))[-1]
  
  # Inverse directly
  G = t(AX)%*%AX/n
  Inv = InverseLinfty(G, n)
  
  # Debiased lasso
  Adb = as.numeric(Ab + (Inv%*%t(AX)%*%(y - AX %*% Ab))/n)
  w2 = Adb[1:p] - Adb[(p+1):(2*p)]
  w1 = Adb[1:p] + Adb[(p+1):(2*p)]
  
  # Scaled lasso
  Scaledlasso = scalreg(AX, y)
  hsigma = Scaledlasso$hsigma
  
  # Test statistic
  Cov = Trans%*%Inv%*%G%*%t(Inv)%*%Trans
  t1 = sqrt(n)*w1/(hsigma*sqrt(diag(Cov[1:p, 1:p])))
  t2 = sqrt(n)*w2/(hsigma*sqrt(diag(Cov[(p+1):(2*p), (p+1):(2*p)])))
  
  # p-value
  p1 = 2*(1 - pnorm(abs(t1)))
  p2 = 2*(1 - pnorm(abs(t2)))
  p21 = p2
  
  # adjusted p-value
  p2a = p.adjust(p2, method = "BH")
  
  # Knockoff-assisted BH
  index2 = seq(along = p2a)[p2a <= q]
  M1_selected = colnames(X[ ,index2])
  
  # Knockoff-assisted BBH
  p21[p1 >= sqrt(q)] = 1
  p21a = p.adjust(p21, method = "BH")
  index21 = seq(along = p21a)[p21a <= sqrt(q)]
  M2_selected = colnames(X[ ,index21])
  
  # Run GM method
  GM = gm(y, X, q = q)
  GM_index = GM$gm_selected
  GM_selected = colnames(X[ ,GM_index])
  
  # Run the knockoff filter.
  knock.gen = function(x) create.fixed(x, method='equi')
  Fixresult = knockoff.filter(X, y, fdr=q, knockoffs=knock.gen, statistic=stat.glmnet_lambdasmax)
  knockoff_selected = names(Fixresult$selected)
  
  list(Method1 = M1_selected, Method2 = M2_selected, GM = GM_selected, Knockoff = knockoff_selected)
}

# Run all 7 responses
# Test fdr = 0.1 
fdr = 0.1
results = lapply(Y, function(y) fourmethods(X, y, 0.1))


# Calculate TP FP and FDP
get_position <- function(x)
  sapply(regmatches(x, regexpr('[[:digit:]]+', x)), as.numeric)

comparisons <- lapply(results, function(drug) {
  lapply(drug, function(selected) {
    positions = unique(get_position(selected)) # remove possible duplicates
    discoveries = length(positions)
    false_discoveries = length(setdiff(positions, tsm_df$Position))
    list(true_discoveries = discoveries - false_discoveries,
         false_discoveries = false_discoveries,
         fdp = false_discoveries / max(1, discoveries))
  })
})


# Run all 7 responses
# Test fdr = 0.2
results02 = lapply(Y, function(y) fourmethods(X, y, 0.2))
comparisons02 <- lapply(results02, function(drug) {
  lapply(drug, function(selected) {
    positions = unique(get_position(selected)) # remove possible duplicates
    discoveries = length(positions)
    false_discoveries = length(setdiff(positions, tsm_df$Position))
    list(true_discoveries = discoveries - false_discoveries,
         false_discoveries = false_discoveries,
         fdp = false_discoveries / max(1, discoveries))
  })
})

# Run all 7 responses
# Test fdr = 0.05
results005 = lapply(Y, function(y) fourmethods(X, y, 0.05))
comparisons005 <- lapply(results005, function(drug) {
  lapply(drug, function(selected) {
    positions = unique(get_position(selected)) # remove possible duplicates
    discoveries = length(positions)
    false_discoveries = length(setdiff(positions, tsm_df$Position))
    list(true_discoveries = discoveries - false_discoveries,
         false_discoveries = false_discoveries,
         fdp = false_discoveries / max(1, discoveries))
  })
})

