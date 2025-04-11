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

n200p1fdr_005 = matrix(c(
                         0.09,0.04,0,0.474,0,
                         0.06,0.073,0,0.338,0,
                         0.079,0.117,0,0.273,0,
                         0.088,0.084,0,0.186,0,
                         0.047,0.065,0,0.126,0,
                         0.06,0.073,0,0.086,0,
                         0.051,0.067,0,0.096,0,
                         0.047,0.077,0,0.095,0,
                         0.049,0.064,0,0.085,0),
                       byrow = TRUE, nrow = 9, ncol = 5)


n200p1power_005 = matrix(c(
                           0.005,0.008,0,0.029,0,
                           0.008,0.013,0,0.094,0,
                           0.041,0.067,0,0.151,0,
                           0.104,0.189,0,0.381,0,
                           0.245,0.381,0,0.566,0,
                           0.421,0.584,0,0.709,0,
                           0.625,0.786,0,0.855,0,
                           0.775,0.888,0,0.921,0,
                           0.895,0.961,0,0.973,0),
                         byrow = TRUE, nrow = 9, ncol = 5)




n200p1.5fdr_005 = matrix(c(
                           0.045,0.1,0,0.427,0,
                           0.092,0.087,0,0.376,0,
                           0.07,0.114,0,0.262,0,
                           0.064,0.062,0,0.178,0,
                           0.04,0.046,0,0.118,0,
                           0.035,0.036,0,0.092,0,
                           0.023,0.052,0,0.082,0,
                           0.015,0.031,0,0.075,0,
                           0.022,0.038,0,0.079,0),
                         byrow = TRUE, nrow = 9, ncol = 5)


n200p1.5power_005 = matrix(c(
                             0.003,0.003,0,0.036,0,
                             0.008,0.011,0,0.069,0,
                             0.027,0.06,0,0.153,0,
                             0.056,0.123,0,0.293,0,
                             0.159,0.269,0,0.454,0,
                             0.289,0.442,0,0.642,0,
                             0.488,0.668,0,0.802,0,
                             0.642,0.793,0,0.89,0,
                             0.803,0.892,0,0.965,0),
                           byrow = TRUE, nrow = 9, ncol = 5)



# Figure 2

n200p2fdr_005 = matrix(c(
                         0.04,0.07,0,0.508,0,
                         0.105,0.129,0,0.374,0,
                         0.088,0.065,0,0.227,0,
                         0.048,0.081,0,0.170,0,
                         0.023,0.035,0.018,0.118,0.005,
                         0.004,0.032,0.003,0.087,0.003,
                         0.005,0.017,0.011,0.076,0.013,
                         0.004,0.018,0.012,0.063,0.010,
                         0.004,0.016,0.013,0.049,0.006),
                       byrow = TRUE, nrow = 9, ncol = 5)


n200p2power_005 = matrix(c(
                           0.002,0.004,0,0.029,0,
                           0.006,0.017,0,0.066,0,
                           0.017,0.039,0,0.124,0,
                           0.038,0.09,0,0.234,0,
                           0.076,0.157,0.041,0.398,0.008,
                           0.161,0.294,0.009,0.559,0.010,
                           0.236,0.411,0.039,0.751,0.038,
                           0.383,0.588,0.039,0.854,0.027,
                           0.510,0.710,0.059,0.937,0.019),
                         byrow = TRUE, nrow = 9, ncol = 5)



# Figure 5

n200p1fdr_01 = matrix(c(
                        0.163,0.175,0,0.452,0,
                        0.134,0.112,0,0.439,0.018,
                        0.137,0.156,0.016,0.240,0.009,
                        0.097,0.131,0.008,0.173,0.008,
                        0.120,0.146,0.032,0.176,0.031,
                        0.092,0.102,0.065,0.124,0.043,
                        0.090,0.107,0.065,0.143,0.049,
                        0.082,0.094,0.067,0.154,0.077,
                        0.089,0.103,0.073,0.150,0.042),
                      byrow = TRUE, nrow = 9, ncol = 5)


n200p1power_01 = matrix(c(
                          0.005,0.005,0,0.043,0,
                          0.02,0.03,0,0.088,0.003,
                          0.043,0.068,0.019,0.176,0.001,
                          0.171,0.254,0.016,0.318,0.016,
                          0.338,0.451,0.096,0.524,0.064,
                          0.51,0.63,0.239,0.724,0.116,
                          0.719,0.83,0.259,0.841,0.144,
                          0.826,0.905,0.270,0.938,0.288,
                          0.940,0.970,0.250,0.983,0.150),
                        byrow = TRUE, nrow = 9, ncol = 5)


n200p1.5fdr_01 = matrix(c(
                          0.105,0.165,0,0.444,0,
                          0.161,0.154,0,0.352,0.008,
                          0.117,0.161,0.01,0.222,0.006,
                          0.085,0.086,0.061,0.206,0.012,
                          0.074,0.107,0.054,0.123,0.061,
                          0.055,0.084,0.079,0.102,0.061,
                          0.032,0.051,0.087,0.145,0.060,
                          0.034,0.070,0.079,0.104,0.072,
                          0.029,0.060,0.070,0.108,0.074),
                        byrow = TRUE, nrow = 9, ncol = 5)


n200p1.5power_01 = matrix(c(
                            0.003,0.008,0,0.038,0,
                            0.02,0.027,0,0.073,0.002,
                            0.04,0.065,0.017,0.149,0.005,
                            0.106,0.204,0.162,0.273,0.016,
                            0.227,0.308,0.319,0.473,0.175,
                            0.354,0.52,0.61,0.658,0.251,
                            0.575,0.706,0.827,0.837,0.499,
                            0.734,0.847,0.971,0.906,0.801,
                            0.853,0.910,0.986,0.982,0.953),
                          byrow = TRUE, nrow = 9, ncol = 5)


# Figure 6

n200p2fdr_01 = matrix(c(
                        0.09,0.148,0,0.438,0,
                        0.081,0.111,0,0.356,0,
                        0.148,0.163,0.019,0.270,0.018,
                        0.121,0.15,0.06,0.140,0.061,
                        0.048,0.079,0.062,0.139,0.034,
                        0.025,0.045,0.089,0.102,0.061,
                        0.023,0.039,0.08,0.120,0.085,
                        0.012,0.021,0.101,0.112,0.068,
                        0.009,0.014,0.062,0.122,0.083),
                      byrow = TRUE, nrow = 9, ncol = 5)


n200p2power_01 = matrix(c(
                          0.003,0.006,0,0.026,0,
                          0.01,0.022,0,0.064,0,
                          0.034,0.054,0.021,0.12,0.010,
                          0.06,0.113,0.181,0.229,0.091,
                          0.089,0.199,0.368,0.422,0.170,
                          0.225,0.356,0.639,0.618,0.413,
                          0.334,0.488,0.803,0.799,0.641,
                          0.469,0.659,0.938,0.933,0.865,
                          0.620,0.780,0.970,0.955,0.929),
                        byrow = TRUE, nrow = 9, ncol = 5)


# Amplitude, 12 figures


# Figure 1-1

# Set x label, it is public.
amplevel = rep(c(0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5), times = 5)
# Set the type of methods, it is public.
type = rep(c('A','B','C','D','E'), each = 9)

points = c('A' = 15, 'B' = 16, 'C' = 17, 'D' = 18, 'E' = 15)

# Read the data into dataframe.
fdr11 = c(n200p1fdr_005[,1], n200p1fdr_005[,2], n200p1fdr_005[,3], n200p1fdr_005[,4], n200p1fdr_005[,5])
df11 = data.frame(amplevel = amplevel, type = type, fdr = fdr11)

# DRAW
n200p200fdr_005 = 
  ggplot(data = df11, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 200, d = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n200p200fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-2

# Read the data into dataframe.
pwr12 = c(n200p1power_005[,1], n200p1power_005[,2], n200p1power_005[,3], n200p1power_005[,4], n200p1power_005[,5])
df12 = data.frame(amplevel = amplevel, type = type, power = pwr12)

# DRAW
n200p200power_005 = 
  ggplot(data = df12, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 200, d = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n200p200power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-3

# Read the data into dataframe.
fdr13 = c(n200p1.5fdr_005[,1], n200p1.5fdr_005[,2], n200p1.5fdr_005[,3], n200p1.5fdr_005[,4], n200p1.5fdr_005[,5])
df13 = data.frame(amplevel = amplevel, type = type, fdr = fdr13)

# DRAW
n200p300fdr_005 = 
  ggplot(data = df13, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 200, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n200p300fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-4

# Read the data into dataframe.
pwr14 = c(n200p1.5power_005[,1], n200p1.5power_005[,2], n200p1.5power_005[,3], n200p1.5power_005[,4], n200p1.5power_005[,5])
df14 = data.frame(amplevel = amplevel, type = type, power = pwr14)

# DRAW
n200p300power_005 = 
  ggplot(data = df14, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 200, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n200p300power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-9

# Read the data into dataframe.
fdr19 = c(n200p2fdr_005[,1], n200p2fdr_005[,2], n200p2fdr_005[,3], n200p2fdr_005[,4], n200p2fdr_005[,5])
df19 = data.frame(amplevel = amplevel, type = type, fdr = fdr19)

# DRAW
n200p400fdr_005 = 
  ggplot(data = df19, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 200, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n200p400fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr110 = c(n200p2power_005[,1], n200p2power_005[,2], n200p2power_005[,3], n200p2power_005[,4], n200p2power_005[,5])
df110 = data.frame(amplevel = amplevel, type = type, power = pwr110)

# DRAW
n200p400power_005 = 
  ggplot(data = df110, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 200, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n200p400power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)




# Amp, 12 figures


# Figure 2-1
# Set x label, it is public.
amp = rep(c(0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5), times = 5)

# Read the data into dataframe.
fdr21 = c(n200p1fdr_01[,1], n200p1fdr_01[,2], n200p1fdr_01[,3], n200p1fdr_01[,4], n200p1fdr_01[,5])
df21 = data.frame(amp = amp, type = type, fdr = fdr21)

# DRAW
n200p200fdr_01 = 
  ggplot(data = df21, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 200, d = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n200p200fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 2-2

# Read the data into dataframe.
pwr22 = c(n200p1power_01[,1], n200p1power_01[,2], n200p1power_01[,3], n200p1power_01[,4], n200p1power_01[,5])
df22 = data.frame(amp = amp, type = type, power = pwr22)

# DRAW
n200p200power_01 = 
  ggplot(data = df22, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 200, d = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n200p200power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)



# Figure 2-3

# Read the data into dataframe.
fdr23 = c(n200p1.5fdr_01[,1], n200p1.5fdr_01[,2], n200p1.5fdr_01[,3], n200p1.5fdr_01[,4], n200p1.5fdr_01[,5])
df23 = data.frame(amp = amp, type = type, fdr = fdr23)

# DRAW
n200p300fdr_01 = 
  ggplot(data = df23, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 200, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n200p300fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 2-4

# Read the data into dataframe.
pwr24 = c(n200p1.5power_01[,1], n200p1.5power_01[,2], n200p1.5power_01[,3], n200p1.5power_01[,4], n200p1.5power_01[,5])
df24 = data.frame(amp = amp, type = type, power = pwr24)

# DRAW
n200p300power_01 = 
  ggplot(data = df24, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 200, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n200p300power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 2-9

# Read the data into dataframe.
fdr29 = c(n200p2fdr_01[,1], n200p2fdr_01[,2], n200p2fdr_01[,3], n200p2fdr_01[,4], n200p2fdr_01[,5])
df29 = data.frame(amp = amp, type = type, fdr = fdr29)

# DRAW
n200p400fdr_01 = 
  ggplot(data = df29, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 200, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n200p400fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 2-10

# Read the data into dataframe.
pwr210 = c(n200p2power_01[,1], n200p2power_01[,2], n200p2power_01[,3], n200p2power_01[,4], n200p2power_01[,5])
df210 = data.frame(amp = amp, type = type, power = pwr210)

# DRAW
n200p400power_01 = 
  ggplot(data = df210, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 200, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n200p400power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)

