library(ggplot2)
# This script presents the results under S4 with FDR level = 0.05.
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

n200p1fdr_005 = matrix(c(0.068,0.048,0.041,0.028,0.473,0,
                         0.098,0.104,0.079,0.074,0.180,0,
                         0.063,0.082,0.017,0.066,0.102,0,
                         0.059,0.070,0.024,0.050,0.090,0,
                         0.064,0.068,0.024,0.036,0.072,0.003,
                         0.067,0.063,0.025,0.046,0.056,0.005,
                         0.079,0.077,0.023,0.034,0.055,0.007,
                         0.070,0.075,0.026,0.032,0.053,0.003,
                         0.069,0.077,0.021,0.042,0.054,0.003),
                       byrow = TRUE, nrow = 9, ncol = 6)


n200p1power_005 = matrix(c(0.007,0.012,0.002,0.009,0.048,0,
                           0.039,0.074,0.023,0.053,0.139,0,
                           0.152,0.283,0.107,0.241,0.351,0,
                           0.390,0.587,0.341,0.522,0.620,0,
                           0.697,0.847,0.620,0.793,0.845,0.010,
                           0.887,0.948,0.830,0.916,0.950,0.020,
                           0.973,0.994,0.957,0.985,0.991,0.020,
                           0.991,0.997,0.989,0.998,0.999,0.010,
                           0.998,0.999,0.997,1,1,0.010),
                         byrow = TRUE, nrow = 9, ncol = 6)





# Figure 2

n200p2fdr_005 = matrix(c(0.030,0.052,0.030,0.070,0.391,0,
                         0.072,0.069,0.014,0.030,0.182,0,
                         0.028,0.064,0.030,0.036,0.081,0,
                         0.049,0.071,0.020,0.032,0.066,0.004,
                         0.061,0.079,0.031,0.041,0.045,0.006,
                         0.075,0.072,0.025,0.043,0.053,0.005,
                         0.074,0.067,0.029,0.039,0.049,0.022,
                         0.073,0.079,0.022,0.036,0.053,0.008,
                         0.075,0.081,0.030,0.038,0.039,0.003),
                       byrow = TRUE, nrow = 9, ncol = 6)


n200p2power_005 = matrix(c(0.009,0.024,0.007,0.019,0.041,0,
                           0.067,0.176,0.071,0.154,0.180,0,
                           0.321,0.506,0.275,0.459,0.468,0,
                           0.689,0.832,0.593,0.767,0.791,0.009,
                           0.909,0.967,0.871,0.940,0.951,0.020,
                           0.985,0.995,0.975,0.986,0.993,0.020,
                           0.998,1,0.996,0.999,1,0.080,
                           0.999,1,1,1,1,0.030,
                           1,1,1,1,1,0.010),
                         byrow = TRUE, nrow = 9, ncol = 6)


n200p2.5fdr_005 = matrix(c(0.047,0.089,0.036,0.037,0.312,0,
                           0.027,0.059,0.031,0.055,0.150,0,
                           0.055,0.073,0.031,0.035,0.051,0,
                           0.065,0.077,0.026,0.032,0.054,0.007,
                           0.065,0.080,0.032,0.044,0.063,0.008,
                           0.085,0.080,0.028,0.044,0.045,0.003,
                           0.073,0.084,0.028,0.038,0.048,0.003,
                           0.088,0.091,0.028,0.038,0.039,0.003,
                           0.074,0.082,0.029,0.036,0.062,0),
                       byrow = TRUE, nrow = 9, ncol = 6)


n200p2.5power_005 = matrix(c(0.017,0.035,0.013,0.025,0.073,0,
                           0.125,0.243,0.102,0.198,0.259,0,
                           0.529,0.700,0.457,0.639,0.623,0,
                           0.848,0.934,0.809,0.909,0.896,0.019,
                           0.978,0.990,0.961,0.988,0.985,0.030,
                           0.995,0.999,0.995,0.998,0.998,0.010,
                           1,1,1,1,1,0.010,
                           1,1,0.999,1,1,0.010,
                           1,1,1,1,1,0),
                         byrow = TRUE, nrow = 9, ncol = 6)



# Figure 5

n200p1fdr_01 = matrix(c(0.091,0.118,0.140,0.162,0.322,0.008,
                        0.093,0.167,0.103,0.151,0.261,0.010,
                        0.105,0.119,0.055,0.088,0.138,0.025,
                        0.117,0.110,0.048,0.061,0.107,0.064,
                        0.131,0.132,0.056,0.072,0.099,0.056,
                        0.121,0.133,0.057,0.063,0.103,0.066,
                        0.146,0.140,0.043,0.064,0.134,0.066,
                        0.148,0.132,0.041,0.051,0.123,0.067,
                        0.150,0.128,0.039,0.063,0.122,0.060),
                      byrow = TRUE, nrow = 9, ncol = 6)


n200p1power_01 = matrix(c(0.017,0.022,0.007,0.014,0.038,0.002,
                          0.069,0.123,0.047,0.081,0.164,0.009,
                          0.229,0.375,0.167,0.273,0.295,0.071,
                          0.521,0.683,0.403,0.563,0.648,0.420,
                          0.754,0.859,0.672,0.809,0.862,0.831,
                          0.929,0.974,0.890,0.945,0.971,0.939,
                          0.981,0.993,0.963,0.986,0.994,0.990,
                          0.995,1,0.990,0.996,0.999,1,
                          1,1,0.999,0.999,0.999,0.999),
                        byrow = TRUE, nrow = 9, ncol = 6)




# Figure 6

n200p2fdr_01 = matrix(c(0.170,0.177,0.095,0.065,0.408,0.007,
                        0.123,0.124,0.084,0.108,0.183,0.024,
                        0.130,0.134,0.059,0.082,0.117,0.066,
                        0.134,0.135,0.064,0.075,0.102,0.047,
                        0.155,0.149,0.061,0.071,0.101,0.065,
                        0.149,0.152,0.067,0.083,0.095,0.047,
                        0.160,0.151,0.061,0.074,0.111,0.044,
                        0.156,0.148,0.068,0.069,0.106,0.059,
                        0.159,0.160,0.057,0.077,0.114,0.066),
                      byrow = TRUE, nrow = 9, ncol = 6)


n200p2power_01 = matrix(c(0.013,0.026,0.011,0.023,0.059,0.002,
                          0.108,0.201,0.087,0.164,0.213,0.018,
                          0.450,0.611,0.337,0.490,0.560,0.264,
                          0.781,0.875,0.693,0.815,0.856,0.688,
                          0.929,0.967,0.919,0.965,0.969,0.954,
                          0.989,0.997,0.987,0.995,0.999,0.989,
                          0.999,1,0.999,0.999,1,1,
                          1,1,1,1,1,1,
                          1,1,1,1,1,1),
                        byrow = TRUE, nrow = 9, ncol = 6)


n200p2.5fdr_01 = matrix(c(0.108,0.101,0.109,0.121,0.390,0,
                           0.152,0.141,0.051,0.075,0.153,0.048,
                           0.124,0.143,0.074,0.085,0.111,0.053,
                           0.126,0.143,0.072,0.080,0.104,0.072,
                           0.150,0.152,0.063,0.080,0.106,0.060,
                           0.160,0.168,0.074,0.092,0.110,0.045,
                           0.157,0.151,0.071,0.084,0.086,0.060,
                           0.168,0.169,0.072,0.080,0.091,0.064,
                           0.170,0.177,0.070,0.073,0.094,0.059),
                         byrow = TRUE, nrow = 9, ncol = 6)


n200p2.5power_01 = matrix(c(0.027,0.055,0.032,0.044,0.064,0,
                             0.185,0.334,0.145,0.261,0.251,0.075,
                             0.620,0.739,0.556,0.688,0.678,0.378,
                             0.915,0.959,0.865,0.925,0.935,0.872,
                             0.985,0.995,0.978,0.991,0.996,0.981,
                             1,1,0.998,1,1,1,
                             1,1,1,1,1,1,
                             1,1,1,1,1,1,
                             1,1,1,1,1,1),
                           byrow = TRUE, nrow = 9, ncol = 6)


# Amplitude, 12 figures


# Figure 1-1

# Set x label, it is public.
amplevel = rep(c(0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5), times = 6)
# Set the type of methods, it is public.
type = rep(c('A','B','C','D','E','F'), each = 9)

points = c('A' = 15, 'B' = 16, 'C' = 15, 'D' = 16, 'E' = 17, 'F' = 17)

# Read the data into dataframe.
fdr11 = c(n200p1fdr_005[,1], n200p1fdr_005[,2], n200p1fdr_005[,3], n200p1fdr_005[,4], n200p1fdr_005[,5], n200p1fdr_005[,6])
df11 = data.frame(amplevel = amplevel, type = type, fdr = fdr11)

# DRAW
n400p400fdr_rho = 
  ggplot(data = df11, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 400, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n400p400fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)


# Figure 1-2

# Read the data into dataframe.
pwr12 = c(n200p1power_005[,1], n200p1power_005[,2], n200p1power_005[,3], n200p1power_005[,4], n200p1power_005[,5], n200p1power_005[,6])
df12 = data.frame(amplevel = amplevel, type = type, power = pwr12)

# DRAW
n400p400power_rho = 
  ggplot(data = df12, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 400, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n400p400power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)




# Figure 1-9

# Read the data into dataframe.
fdr19 = c(n200p2fdr_005[,1], n200p2fdr_005[,2], n200p2fdr_005[,3], n200p2fdr_005[,4], n200p2fdr_005[,5], n200p2fdr_005[,6])
df19 = data.frame(amplevel = amplevel, type = type, fdr = fdr19)

# DRAW
n500p750fdr_rho = 
  ggplot(data = df19, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n600p600fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr110 = c(n200p2power_005[,1], n200p2power_005[,2], n200p2power_005[,3], n200p2power_005[,4], n200p2power_005[,5], n200p2power_005[,6])
df110 = data.frame(amplevel = amplevel, type = type, power = pwr110)

# DRAW
n500p750power_rho = 
  ggplot(data = df110, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n600p600power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)



# Figure 1-9

# Read the data into dataframe.
fdr192 = c(n200p2.5fdr_005[,1], n200p2.5fdr_005[,2], n200p2.5fdr_005[,3], n200p2.5fdr_005[,4], n200p2.5fdr_005[,5], n200p2.5fdr_005[,6])
df192 = data.frame(amplevel = amplevel, type = type, fdr = fdr192)

# DRAW
n500p750fdr_rho = 
  ggplot(data = df192, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n800p800fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr1102 = c(n200p2.5power_005[,1], n200p2.5power_005[,2], n200p2.5power_005[,3], n200p2.5power_005[,4], n200p2.5power_005[,5], n200p2.5power_005[,6])
df1102 = data.frame(amplevel = amplevel, type = type, power = pwr1102)

# DRAW
n500p750power_rho = 
  ggplot(data = df1102, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n800p800power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)



# Amp, 12 figures


# Figure 2-1
# Set x label, it is public.
amp = rep(c(0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5), times = 6)

# Read the data into dataframe.
fdr21 = c(n200p1fdr_01[,1], n200p1fdr_01[,2], n200p1fdr_01[,3], n200p1fdr_01[,4], n200p1fdr_01[,5], n200p1fdr_01[,6])
df21 = data.frame(amp = amp, type = type, fdr = fdr21)

# DRAW
n400p400fdr_amp = 
  ggplot(data = df21, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 400, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n400p400fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)


# Figure 2-2

# Read the data into dataframe.
pwr22 = c(n200p1power_01[,1], n200p1power_01[,2], n200p1power_01[,3], n200p1power_01[,4], n200p1power_01[,5], n200p1power_01[,6])
df22 = data.frame(amp = amp, type = type, power = pwr22)

# DRAW
n400p400power_amp = 
  ggplot(data = df22, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 400, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n400p400power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)





# Figure 2-9

# Read the data into dataframe.
fdr29 = c(n200p2fdr_01[,1], n200p2fdr_01[,2], n200p2fdr_01[,3], n200p2fdr_01[,4], n200p2fdr_01[,5], n200p2fdr_01[,6])
df29 = data.frame(amp = amp, type = type, fdr = fdr29)

# DRAW
n500p750fdr_amp = 
  ggplot(data = df29, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n600p600fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)


# Figure 2-10

# Read the data into dataframe.
pwr210 = c(n200p2power_01[,1], n200p2power_01[,2], n200p2power_01[,3], n200p2power_01[,4], n200p2power_01[,5], n200p2power_01[,6])
df210 = data.frame(amp = amp, type = type, power = pwr210)

# DRAW
n500p750power_amp = 
  ggplot(data = df210, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n600p600power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)



# Figure 2-9

# Read the data into dataframe.
fdr292 = c(n200p2.5fdr_01[,1], n200p2.5fdr_01[,2], n200p2.5fdr_01[,3], n200p2.5fdr_01[,4], n200p2.5fdr_01[,5], n200p2.5fdr_01[,6])
df292 = data.frame(amp = amp, type = type, fdr = fdr292)

# DRAW
n500p750fdr_amp = 
  ggplot(data = df292, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n800p800fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)


# Figure 2-10

# Read the data into dataframe.
pwr2102 = c(n200p2.5power_01[,1], n200p2.5power_01[,2], n200p2.5power_01[,3], n200p2.5power_01[,4], n200p2.5power_01[,5], n200p2.5power_01[,6])
df2102 = data.frame(amp = amp, type = type, power = pwr2102)

# DRAW
n500p750power_amp = 
  ggplot(data = df210, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n800p800power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)

