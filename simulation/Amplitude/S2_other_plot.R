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
                         0.055,0.067,0,0.390,0,
                         0.031,0.069,0.005,0.155,0,
                         0.018,0.027,0.019,0.074,0.014,
                         0.023,0.025,0.042,0.053,0.034,
                         0.018,0.031,0.056,0.077,0.054,
                         0.013,0.023,0.043,0.080,0.043,
                         0.017,0.028,0.059,0.076,0.046,
                         0.015,0.030,0.039,0.066,0.037,
                         0.014,0.021,0.042,0.079,0.042),
                       byrow = TRUE, nrow = 9, ncol = 5)


n200p1power_005 = matrix(c(
                           0.002,0.010,0,0.041,0,
                           0.037,0.097,0.017,0.154,0,
                           0.132,0.299,0.111,0.391,0.083,
                           0.445,0.655,0.492,0.719,0.362,
                           0.734,0.873,0.878,0.935,0.714,
                           0.924,0.973,1,0.988,0.901,
                           0.980,0.996,1,0.998,0.993,
                           0.997,1,1,1,1,
                           1,1,1,1,1),
                         byrow = TRUE, nrow = 9, ncol = 5)




n200p1.5fdr_005 = matrix(c(
                           0.085,0.047,0,0.404,0,
                           0.018,0.026,0.010,0.130,0,
                           0.005,0.010,0.034,0.072,0.002,
                           0,0.010,0.034,0.062,0.014,
                           0.002,0.005,0.040,0.052,0.023,
                           0.002,0.005,0.034,0.049,0.032,
                           0.002,0.007,0.035,0.059,0.031,
                           0.002,0.007,0.033,0.063,0.027,
                           0.002,0.006,0.037,0.063,0.031),
                         byrow = TRUE, nrow = 9, ncol = 5)


n200p1.5power_005 = matrix(c(
                             0.003,0.009,0,0.038,0,
                             0.018,0.047,0.016,0.145,0.007,
                             0.042,0.134,0.357,0.381,0.232,
                             0.173,0.405,0.847,0.728,0.603,
                             0.450,0.684,0.975,0.915,0.772,
                             0.728,0.876,0.993,0.988,0.951,
                             0.906,0.970,1,0.998,0.995,
                             0.973,0.992,1,1,1,
                             0.995,0.999,1,1,1),
                           byrow = TRUE, nrow = 9, ncol = 5)



# Figure 2

n200p2fdr_005 = matrix(c(
                         0.078,0.047,0,0.315,0,
                         0.005,0.023,0.006,0.115,0,
                         0.003,0.005,0.039,0.060,0.012,
                         0,0.001,0.040,0.053,0.033,
                         0,0.001,0.054,0.050,0.036,
                         0,0,0.055,0.073,0.033,
                         0,0,0.051,0.058,0.033,
                         0,0,0.049,0.062,0.030,
                         0,0,0.050,0.065,0.036),
                       byrow = TRUE, nrow = 9, ncol = 5)


n200p2power_005 = matrix(c(
                           0.003,0.006,0,0.033,0,
                           0.012,0.024,0.019,0.134,0.005,
                           0.012,0.048,0.334,0.319,0.195,
                           0.029,0.121,0.763,0.644,0.527,
                           0.080,0.294,0.939,0.882,0.748,
                           0.175,0.479,0.989,0.980,0.943,
                           0.407,0.731,1,0.996,0.978,
                           0.624,0.860,1,0.999,0.988,
                           0.836,0.962,1,1,1),
                         byrow = TRUE, nrow = 9, ncol = 5)



# Figure 5

n200p1fdr_01 = matrix(c(
                        0.100,0.095,0.015,0.302,0.005,
                        0.053,0.061,0.058,0.202,0.032,
                        0.054,0.062,0.081,0.143,0.067,
                        0.036,0.054,0.081,0.100,0.065,
                        0.040,0.058,0.088,0.108,0.075,
                        0.033,0.053,0.079,0.125,0.068,
                        0.039,0.044,0.093,0.111,0.086,
                        0.037,0.054,0.094,0.108,0.089,
                        0.033,0.053,0.089,0.110,0.081),
                      byrow = TRUE, nrow = 9, ncol = 5)


n200p1power_01 = matrix(c(
                          0.010,0.022,0.019,0.034,0.002,
                          0.054,0.114,0.277,0.200,0.124,
                          0.228,0.374,0.758,0.490,0.392,
                          0.529,0.684,0.943,0.801,0.694,
                          0.802,0.902,0.995,0.953,0.911,
                          0.939,0.974,0.998,0.994,0.996,
                          0.991,0.996,1,1,1,
                          0.999,1,1,1,1,
                          1,1,1,1,1),
                        byrow = TRUE, nrow = 9, ncol = 5)


n200p1.5fdr_01 = matrix(c(
                          0.088,0.104,0.012,0.286,0.004,
                          0.052,0.059,0.059,0.174,0.024,
                          0.031,0.031,0.104,0.115,0.086,
                          0.010,0.018,0.098,0.098,0.078,
                          0.005,0.013,0.112,0.107,0.089,
                          0.004,0.014,0.106,0.109,0.083,
                          0.004,0.010,0.083,0.107,0.076,
                          0.006,0.011,0.090,0.105,0.078,
                          0.003,0.010,0.091,0.100,0.084),
                        byrow = TRUE, nrow = 9, ncol = 5)


n200p1.5power_01 = matrix(c(
                            0.008,0.015,0.015,0.042,0.008,
                            0.016,0.047,0.200,0.160,0.094,
                            0.083,0.196,0.715,0.414,0.298,
                            0.259,0.447,0.926,0.764,0.643,
                            0.558,0.734,0.991,0.937,0.818,
                            0.825,0.919,1,0.988,0.954,
                            0.925,0.973,1,0.998,0.987,
                            0.984,0.995,1,1,0.998,
                            0.996,1,1,1,1),
                          byrow = TRUE, nrow = 9, ncol = 5)


# Figure 6

n200p2fdr_01 = matrix(c(
                        0.110,0.122,0.043,0.297,0.013,
                        0.046,0.042,0.086,0.144,0.052,
                        0.002,0.006,0.078,0.112,0.065,
                        0,0.003,0.091,0.094,0.081,
                        0,0.001,0.089,0.108,0.074,
                        0.001,0.001,0.099,0.102,0.081,
                        0,0,0.100,0.110,0.085,
                        0,0,0.102,0.102,0.078,
                        0,0,0.103,0.097,0.083),
                      byrow = TRUE, nrow = 9, ncol = 5)


n200p2power_01 = matrix(c(
                          0.004,0.009,0.035,0.034,0.006,
                          0.011,0.032,0.222,0.132,0.076,
                          0.032,0.067,0.622,0.401,0.292,
                          0.056,0.153,0.877,0.715,0.636,
                          0.143,0.353,0.977,0.931,0.828,
                          0.282,0.570,0.995,0.984,0.956,
                          0.568,0.795,1,0.995,0.987,
                          0.789,0.923,1,0.999,0.998,
                          0.901,0.969,1,1,1),
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
n500p500fdr_005 = 
  ggplot(data = df11, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 500, d = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n500p500fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-2

# Read the data into dataframe.
pwr12 = c(n200p1power_005[,1], n200p1power_005[,2], n200p1power_005[,3], n200p1power_005[,4], n200p1power_005[,5])
df12 = data.frame(amplevel = amplevel, type = type, power = pwr12)

# DRAW
n500p500power_005 = 
  ggplot(data = df12, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p500power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-3

# Read the data into dataframe.
fdr13 = c(n200p1.5fdr_005[,1], n200p1.5fdr_005[,2], n200p1.5fdr_005[,3], n200p1.5fdr_005[,4], n200p1.5fdr_005[,5])
df13 = data.frame(amplevel = amplevel, type = type, fdr = fdr13)

# DRAW
n500p750fdr_005 = 
  ggplot(data = df13, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 500, d = 750") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n500p750fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-4

# Read the data into dataframe.
pwr14 = c(n200p1.5power_005[,1], n200p1.5power_005[,2], n200p1.5power_005[,3], n200p1.5power_005[,4], n200p1.5power_005[,5])
df14 = data.frame(amplevel = amplevel, type = type, power = pwr14)

# DRAW
n500p750power_005 = 
  ggplot(data = df14, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d = 750") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p750power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-9

# Read the data into dataframe.
fdr19 = c(n200p2fdr_005[,1], n200p2fdr_005[,2], n200p2fdr_005[,3], n200p2fdr_005[,4], n200p2fdr_005[,5])
df19 = data.frame(amplevel = amplevel, type = type, fdr = fdr19)

# DRAW
n500p1000fdr_005 = 
  ggplot(data = df19, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 500, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n500p1000fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr110 = c(n200p2power_005[,1], n200p2power_005[,2], n200p2power_005[,3], n200p2power_005[,4], n200p2power_005[,5])
df110 = data.frame(amplevel = amplevel, type = type, power = pwr110)

# DRAW
n500p1000power_005 = 
  ggplot(data = df110, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p1000power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)




# Amp, 12 figures


# Figure 2-1
# Set x label, it is public.
amp = rep(c(0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5), times = 5)

# Read the data into dataframe.
fdr21 = c(n200p1fdr_01[,1], n200p1fdr_01[,2], n200p1fdr_01[,3], n200p1fdr_01[,4], n200p1fdr_01[,5])
df21 = data.frame(amp = amp, type = type, fdr = fdr21)

# DRAW
n500p500fdr_01 = 
  ggplot(data = df21, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 500, d = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n500p500fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 2-2

# Read the data into dataframe.
pwr22 = c(n200p1power_01[,1], n200p1power_01[,2], n200p1power_01[,3], n200p1power_01[,4], n200p1power_01[,5])
df22 = data.frame(amp = amp, type = type, power = pwr22)

# DRAW
n500p500power_01 = 
  ggplot(data = df22, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p500power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)



# Figure 2-3

# Read the data into dataframe.
fdr23 = c(n200p1.5fdr_01[,1], n200p1.5fdr_01[,2], n200p1.5fdr_01[,3], n200p1.5fdr_01[,4], n200p1.5fdr_01[,5])
df23 = data.frame(amp = amp, type = type, fdr = fdr23)

# DRAW
n500p750fdr_01 = 
  ggplot(data = df23, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 500, d = 750") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n500p750fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 2-4

# Read the data into dataframe.
pwr24 = c(n200p1.5power_01[,1], n200p1.5power_01[,2], n200p1.5power_01[,3], n200p1.5power_01[,4], n200p1.5power_01[,5])
df24 = data.frame(amp = amp, type = type, power = pwr24)

# DRAW
n500p750power_01 = 
  ggplot(data = df24, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d = 750") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p750power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 2-9

# Read the data into dataframe.
fdr29 = c(n200p2fdr_01[,1], n200p2fdr_01[,2], n200p2fdr_01[,3], n200p2fdr_01[,4], n200p2fdr_01[,5])
df29 = data.frame(amp = amp, type = type, fdr = fdr29)

# DRAW
n500p1000fdr_01 = 
  ggplot(data = df29, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 500, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n500p1000fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)


# Figure 2-10

# Read the data into dataframe.
pwr210 = c(n200p2power_01[,1], n200p2power_01[,2], n200p2power_01[,3], n200p2power_01[,4], n200p2power_01[,5])
df210 = data.frame(amp = amp, type = type, power = pwr210)

# DRAW
n500p1000power_01 = 
  ggplot(data = df210, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p1000power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S2", width = 8, height = 6)

