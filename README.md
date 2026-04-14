## Official Implementations of `Controlling the False Discovery Rate in High-Dimensional Linear Models Using Model-X Knockoffs and p-values`

## Introduction

- We propose a novel multiple testing methodology for controlling the false discovery rate (FDR) in high-dimensional linear models that integrates model-X knockoff techniques with debiased penalized regression estimators. At the foundation of our methodology, we construct and study two sets of naturally paired high-dimensional test statistics and the associated p-values for evaluating the same null hypotheses. The first set is shown to be asymptotically mutually independent, justifying the use of the Benjamini-Hochberg procedure. We further exploit the pairing structure through a two-stage procedure aimed at improving power. Our theoretical results establish the key properties of the framework with respect to asymptotic FDR control and formally characterize the associated power gains of the two-stage procedure. Importantly, our framework accommodates general dependence in the design matrix. Extensive simulations demonstrate that our methods outperform existing approaches -- particularly those relying on empirical FDP estimates -- in both power and FDR control accuracy, with notable gains in settings involving weaker signals, small sample sizes, or low target FDR levels.

## Data and Files

-   simulation: includes codes and figures for the simulation study in the paper. It includes 5 sections, which are "Zero amplitude" (section 1, S1), "Amplitude" (section 2, S2), "Highly correlated covariates" (section 3, S3), "Two-stage refined methods" (section 4, S4), and "Low dimension" (section 5, S5).

-   realdata: includes codes, data and figures for the real data analysis in the paper.

## Instructions

-   Each time you run the code, please make sure to set the working directory to the folder where the code is located. For example, when you run the code located at "simulation/Amplitude/S2_simulation.R", please set the working directory to "simulation/Amplitude".

-   We are using the background jobs feature in R. To ensure normal processing and communication of the processor and to guarantee sufficient memory space, it is not recommended to run multiple background jobs simultaneously.

-   Currently, the number of cores is uniformly set at 32. Please adjust the number of parallel cores according to the specific conditions of your computing device. You can also increase the number of replications to achieve more robust FDR control and power performance.

-   When using RData files obtained from simulations for plotting, ensure that you place the RData files into the correct plotting folder before running the plotting code, or manually modify the loading command to correctly import the RData files.

-   Since the simulations in Section G.6 and I in the Supplementary Material require data from previous sections, please ensure that the simulation codes are run in order to generate the RData files and then produce the plots. Otherwise, data may be missing when generating the plots.

-   For more detailed information, please refer to the readme files in each folder.

## Note:

* All source files for simulation study are in the folder "simulation/source".

* Inverse.R is the code of estimating the precision matrix.

* MXK_KBH_KBBH.R, MXK_KBH_KBBH_E.R are codes of Algorithm 1 and Algorithm 2.

* gm.R, GMtest.R, GMtest067.R and GMtestT.R are codes of the Gaussian Mirror method.

* gm_new.R, GMtest_new.R, GMtest067_new.R and GMtestT_new.R are codes of the Gaussian Mirror method modified by FDP+ threshold.

* OBBH.R and OBBH_E.R are codes for p-value-based methods with original data.

* TBBH.R and TBBH_E.R are codes for methods with non-Gaussian errors.

* DSBBH.R and DSBBH_E.R are codes for methods with data-splitting.

* KBBHw_pre.R is the two-stage refined version of Algorithm 1 and Algorithm 2.

* OBBHw_pre.R is the two-stage refined version of OBBH.R. 

* TBBHw_pre.R is the two-stage refined version of TBBH.R.

* BBH.R is the code of the BBH method.
