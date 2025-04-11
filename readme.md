## Official Implementations of `False Discovery Control for High-Dimensional Linear Models with Model-X Knockoff and p-values`

## Introduction

In this study, we propose new false discovery rate (FDR) control methods using p-values evaluated from carefully constructed test statistics to address the multiple testing problem in high-dimensional linear models. We tackle two primary challenges: the inherently daunting task of statistical inference in high-dimensional models and the methodological and theoretical difficulties in developing appropriate approaches that ensure valid FDR control under complex and unknown dependencies among test statistics.
To overcome these challenges, we develop a novel multiple testing framework, devising model-X knockoff variables, that integrates debiasing techniques with a penalized regression estimator applied to high-dimensional linear models. The framework utilizes an augmented model matrix containing both the original variables and their knockoff counterparts. Through an appropriate linear transformation upon debiasing the penalized regression estimator, we construct naturally paired statistics and their associated p-values for high-dimensional hypotheses. Based on these paired p-values, we implement a two-step multiple testing procedure: the first step applies the Bonferroni method for initial selection, followed by the Benjamini-Hochberg procedure to finalize decisions -- each using one of the two sets of paired p-values. 
We establish the theoretical validity of the debiasing process and confirm that the proposed methods effectively control the FDR. Empirical studies demonstrate that our approach outperforms competing techniques based on empirical false discovery proportions, achieving valid FDR control and enhanced statistical power, particularly in scenarios with weaker signals, smaller sample sizes, and lower FDR levels.

## Data and Files

* simulation: includes codes for Section 5 （Simulations）in the paper.

* realdata: includes codes and data for Section 6（Empirical applications）in the paper.

## Codes

The codes in the folders include the implementation of the proposed Method 1 and Method 2 under high dimensional setting, two-stage refined Method 1 and Method 2, Method 1 and Method 2 under low dimensional setting.
