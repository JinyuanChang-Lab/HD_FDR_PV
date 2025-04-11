library(ggplot2)
# This script presents the results under S2 with FDR level = 0.05.
# We will construct 6 figures, which are 
# 1, n = 200; p = 1*n, 1.5*n, 2*n; rho;
# 2, n = 500; p = 1*n, 1.5*n, 2*n; rho;
# 3, n = 200; p = 1*n, 1.5*n, 2*n; rho;
# 4, n = 500; p = 1*n, 1.5*n, 2*n; rho;
# 5, n = 200; p = 1*n, 1.5*n, 2*n; amp;
# 6, n = 500; p = 1*n, 1.5*n, 2*n; amp.
# Each figure will include 6 subfigures. This script will draw total 36 figures.

# First step, we record the data. Second step, we draw the figure.
# 1st column, 1p method; 2nd column, 2p method; 3rd column, knockoff method.
# Row: larger parameters.

# Figure 1

n200p1fdr_02 = matrix(c(
                         0.232,0.210,0,0.508,0,
                         0.185,0.175,0.073,0.427,0.053,
                         0.216,0.199,0.102,0.347,0.085,
                         0.186,0.229,0.152,0.253,0.110,
                         0.180,0.180,0.189,0.194,0.154,
                         0.185,0.183,0.176,0.211,0.178,
                         0.159,0.202,0.192,0.197,0.167,
                         0.137,0.196,0.188,0.251,0.169,
                         0.156,0.200,0.186,0.233,0.187),
                       byrow = TRUE, nrow = 9, ncol = 5)


n200p1power_02 = matrix(c(
                           0.014,0.014,0.025,0.031,0.012,
                           0.030,0.043,0.053,0.075,0.024,
                           0.104,0.155,0.183,0.219,0.112,
                           0.206,0.320,0.337,0.426,0.243,
                           0.393,0.504,0.519,0.538,0.412,
                           0.615,0.718,0.743,0.773,0.634,
                           0.828,0.893,0.862,0.880,0.834,
                           0.899,0.943,0.951,0.973,0.912,
                           0.954,0.974,0.987,0.994,0.956),
                         byrow = TRUE, nrow = 9, ncol = 5)




n200p1.5fdr_02 = matrix(c(
                           0.232,0.242,0.020,0.448,0.010,
                           0.213,0.219,0.050,0.394,0.021,
                           0.189,0.189,0.167,0.278,0.043,
                           0.167,0.193,0.157,0.229,0.178,
                           0.131,0.172,0.162,0.214,0.168,
                           0.121,0.126,0.176,0.205,0.158,
                           0.083,0.104,0.156,0.213,0.176,
                           0.057,0.090,0.178,0.225,0.168,
                           0.074,0.106,0.189,0.208,0.165),
                         byrow = TRUE, nrow = 9, ncol = 5)


n200p1.5power_02 = matrix(c(
                             0.011,0.014,0.021,0.027,0.012,
                             0.032,0.045,0.053,0.067,0.043,
                             0.070,0.122,0.143,0.158,0.132,
                             0.169,0.240,0.321,0.348,0.250,
                             0.273,0.386,0.502,0.543,0.391,
                             0.468,0.581,0.695,0.774,0.596,
                             0.652,0.739,0.853,0.883,0.752,
                             0.773,0.853,0.923,0.958,0.882,
                             0.893,0.931,0.978,0.988,0.954),
                           byrow = TRUE, nrow = 9, ncol = 5)



# Figure 2

n200p2fdr_02 = matrix(c(
                         0.194,0.243,0.012,0.395,0.021,
                         0.221,0.240,0.040,0.377,0.032,
                         0.226,0.229,0.145,0.372,0.112,
                         0.126,0.169,0.176,0.188,0.154,
                         0.092,0.105,0.189,0.198,0.143,
                         0.045,0.072,0.181,0.213,0.152,
                         0.024,0.043,0.178,0.216,0.156,
                         0.020,0.041,0.184,0.247,0.167,
                         0.026,0.040,0.167,0.213,0.154),
                       byrow = TRUE, nrow = 9, ncol = 5)


n200p2power_02 = matrix(c(
                           0.006,0.012,0.016,0.018,0.011,
                           0.024,0.036,0.041,0.040,0.032,
                           0.041,0.071,0.167,0.173,0.086,
                           0.093,0.144,0.302,0.315,0.254,
                           0.164,0.234,0.494,0.534,0.367,
                           0.306,0.411,0.654,0.697,0.496,
                           0.404,0.528,0.765,0.866,0.595,
                           0.584,0.718,0.904,0.953,0.784,
                           0.714,0.824,0.970,0.980,0.897),
                         byrow = TRUE, nrow = 9, ncol = 5)




# Amplitude, 12 figures


# Figure 1-1

# Set x label, it is public.
amplevel = rep(c(0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5), times = 5)
# Set the type of methods, it is public.
type = rep(c('A','B','C','D','E'), each = 9)

points = c('A' = 15, 'B' = 16, 'C' = 17, 'D' = 18, 'E' = 15)

# Read the data into dataframe.
fdr11 = c(n200p1fdr_02[,1], n200p1fdr_02[,2], n200p1fdr_02[,3], n200p1fdr_02[,4], n200p1fdr_02[,5])
df11 = data.frame(amplevel = amplevel, type = type, fdr = fdr11)

# DRAW
n200p200fdr_02 = 
  ggplot(data = df11, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 200, d = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n200p200fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-2

# Read the data into dataframe.
pwr12 = c(n200p1power_02[,1], n200p1power_02[,2], n200p1power_02[,3], n200p1power_02[,4], n200p1power_02[,5])
df12 = data.frame(amplevel = amplevel, type = type, power = pwr12)

# DRAW
n200p200power_02 = 
  ggplot(data = df12, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 200, d = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n200p200power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-3

# Read the data into dataframe.
fdr13 = c(n200p1.5fdr_02[,1], n200p1.5fdr_02[,2], n200p1.5fdr_02[,3], n200p1.5fdr_02[,4], n200p1.5fdr_02[,5])
df13 = data.frame(amplevel = amplevel, type = type, fdr = fdr13)

# DRAW
n200p300fdr_02 = 
  ggplot(data = df13, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 200, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n200p300fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-4

# Read the data into dataframe.
pwr14 = c(n200p1.5power_02[,1], n200p1.5power_02[,2], n200p1.5power_02[,3], n200p1.5power_02[,4], n200p1.5power_02[,5])
df14 = data.frame(amplevel = amplevel, type = type, power = pwr14)

# DRAW
n200p300power_02 = 
  ggplot(data = df14, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 200, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n200p300power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-9

# Read the data into dataframe.
fdr19 = c(n200p2fdr_02[,1], n200p2fdr_02[,2], n200p2fdr_02[,3], n200p2fdr_02[,4], n200p2fdr_02[,5])
df19 = data.frame(amplevel = amplevel, type = type, fdr = fdr19)

# DRAW
n200p400fdr_02 = 
  ggplot(data = df19, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 200, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n200p400fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr110 = c(n200p2power_02[,1], n200p2power_02[,2], n200p2power_02[,3], n200p2power_02[,4], n200p2power_02[,5])
df110 = data.frame(amplevel = amplevel, type = type, power = pwr110)

# DRAW
n200p400power_02 = 
  ggplot(data = df110, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 200, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n200p400power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)






