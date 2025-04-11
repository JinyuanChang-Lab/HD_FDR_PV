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
                         0.221,0.196,0,0.367,0,
                         0.179,0.162,0.106,0.210,0.087,
                         0.093,0.130,0.218,0.170,0.153,
                         0.084,0.084,0.194,0.178,0.167,
                         0.087,0.102,0.204,0.213,0.178,
                         0.088,0.107,0.184,0.206,0.176,
                         0.091,0.105,0.200,0.211,0.165,
                         0.077,0.099,0.201,0.195,0.175,
                         0.084,0.106,0.199,0.196,0.172),
                       byrow = TRUE, nrow = 9, ncol = 5)


n200p1power_02 = matrix(c(
                           0.018,0.029,0,0.048,0,
                           0.107,0.152,0.344,0.208,0.135,
                           0.313,0.442,0.765,0.546,0.422,
                           0.674,0.775,0.942,0.867,0.744,
                           0.734,0.873,0.999,0.965,0.854,
                           0.924,0.973,1,0.996,0.953,
                           0.980,0.996,1,1,0.996,
                           0.997,1,1,1,1,
                           1,1,1,1,1),
                         byrow = TRUE, nrow = 9, ncol = 5)




n200p1.5fdr_02 = matrix(c(
                           0.165,0.134,0,0.317,0,
                           0.084,0.104,0.144,0.228,0.102,
                           0.052,0.054,0.192,0.212,0.167,
                           0.019,0.032,0.195,0.190,0.178,
                           0.020,0.033,0.201,0.204,0.182,
                           0.017,0.023,0.204,0.194,0.176,
                           0.017,0.028,0.197,0.198,0.181,
                           0.017,0.025,0.189,0.212,0.177,
                           0.014,0.024,0.199,0.197,0.173),
                         byrow = TRUE, nrow = 9, ncol = 5)


n200p1.5power_02 = matrix(c(
                             0.016,0.027,0,0.041,0,
                             0.051,0.078,0.321,0.201,0.107,
                             0.144,0.247,0.705,0.574,0.382,
                             0.368,0.509,0.923,0.854,0.703,
                             0.675,0.798,0.989,0.966,0.792,
                             0.873,0.934,0.994,0.992,0.941,
                             0.961,0.980,1,0.999,0.993,
                             0.991,0.997,1,1,1,
                             0.997,0.999,1,1,1),
                           byrow = TRUE, nrow = 9, ncol = 5)

# Figure 2

n200p2fdr_02 = matrix(c(
                         0.247,0.231,0,0.275,0,
                         0.077,0.096,0.136,0.190,0.104,
                         0,0.006,0.199,0.170,0.172,
                         0.002,0.010,0.202,0.200,0.173,
                         0.001,0.005,0.204,0.181,0.176,
                         0.001,0.002,0.195,0.187,0.173,
                         0,0.001,0.191,0.194,0.183,
                         0,0.001,0.199,0.192,0.178,
                         0.001,0.001,0.205,0.194,0.176),
                       byrow = TRUE, nrow = 9, ncol = 5)


n200p2power_02 = matrix(c(
                           0.010,0.017,0,0.036,0,
                           0.029,0.051,0.259,0.185,0.085,
                           0.036,0.083,0.634,0.497,0.345,
                           0.092,0.216,0.863,0.824,0.689,
                           0.269,0.426,0.949,0.947,0.744,
                           0.498,0.688,0.959,0.991,0.902,
                           0.704,0.848,1,0.999,0.965,
                           0.845,0.932,1,1,0.978,
                           0.938,0.977,1,1,1),
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
n500p500fdr_02 = 
  ggplot(data = df11, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 500, d = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n500p500fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-2

# Read the data into dataframe.
pwr12 = c(n200p1power_02[,1], n200p1power_02[,2], n200p1power_02[,3], n200p1power_02[,4], n200p1power_02[,5])
df12 = data.frame(amplevel = amplevel, type = type, power = pwr12)

# DRAW
n500p500power_02 = 
  ggplot(data = df12, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p500power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-3

# Read the data into dataframe.
fdr13 = c(n200p1.5fdr_02[,1], n200p1.5fdr_02[,2], n200p1.5fdr_02[,3], n200p1.5fdr_02[,4], n200p1.5fdr_02[,5])
df13 = data.frame(amplevel = amplevel, type = type, fdr = fdr13)

# DRAW
n500p750fdr_02 = 
  ggplot(data = df13, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 500, d = 750") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n500p750fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-4

# Read the data into dataframe.
pwr14 = c(n200p1.5power_02[,1], n200p1.5power_02[,2], n200p1.5power_02[,3], n200p1.5power_02[,4], n200p1.5power_02[,5])
df14 = data.frame(amplevel = amplevel, type = type, power = pwr14)

# DRAW
n500p750power_02 = 
  ggplot(data = df14, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d = 750") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p750power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-9

# Read the data into dataframe.
fdr19 = c(n200p2fdr_02[,1], n200p2fdr_02[,2], n200p2fdr_02[,3], n200p2fdr_02[,4], n200p2fdr_02[,5])
df19 = data.frame(amplevel = amplevel, type = type, fdr = fdr19)

# DRAW
n500p1000fdr_02 = 
  ggplot(data = df19, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 500, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n500p1000fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr110 = c(n200p2power_02[,1], n200p2power_02[,2], n200p2power_02[,3], n200p2power_02[,4], n200p2power_02[,5])
df110 = data.frame(amplevel = amplevel, type = type, power = pwr110)

# DRAW
n500p1000power_02 = 
  ggplot(data = df110, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p1000power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


