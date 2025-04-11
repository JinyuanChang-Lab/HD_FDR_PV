library(ggplot2)
# This script presents the results under S5 with FDR level = 0.05.
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

n200p1fdr_005 = matrix(c(0.030,0.030,0.027,
                         0.010,0,0.033,
                         0,0,0.027,
                         0,0.003,0.029,
                         0.004,0.005,0.030,
                         0.002,0.009,0.033,
                         0.006,0.014,0.041,
                         0.002,0.005,0.053,
                         0.007,0.010,0.040,
                         0.005,0.010,0.041
                         ),
                       byrow = TRUE, nrow = 10, ncol = 3)


n200p1power_005 = matrix(c(0.002,0.001,0.003,
                           0.001,0.009,0.008,
                           0.015,0.031,0.034,
                           0.056,0.151,0.077,
                           0.195,0.431,0.283,
                           0.546,0.784,0.504,
                           0.777,0.904,0.726,
                           0.903,0.966,0.875,
                           0.972,0.991,0.944,
                           0.994,1,0.976
                           ),
                         byrow = TRUE, nrow = 10, ncol = 3)




n200p1.5fdr_005 = matrix(c(0.035,0,0.036,
                           0,0,0.033,
                           0,0.007,0.040,
                           0.002,0.003,0.042,
                           0.001,0.003,0.039,
                           0.002,0.003,0.033,
                           0.001,0.003,0.044,
                           0.002,0.002,0.061,
                           0.001,0.005,0.041,
                           0.002,0.004,0.045
                           ),
                         byrow = TRUE, nrow = 10, ncol = 3)


n200p1.5power_005 = matrix(c(0.004,0,0.012,
                             0.003,0.008,0.005,
                             0.019,0.090,0.039,
                             0.148,0.386,0.167,
                             0.548,0.795,0.373,
                             0.816,0.939,0.644,
                             0.962,0.992,0.850,
                             0.988,0.998,0.947,
                             0.998,1,0.978,
                             1,1,0.996
                             ),
                           byrow = TRUE, nrow = 10, ncol = 3)



# Figure 2

n200p2fdr_005 = matrix(c(0,0.010,0.031,
                         0,0,0.025,
                         0,0,0.041,
                         0.001,0.002,0.047,
                         0,0.002,0.058,
                         0,0.003,0.048,
                         0.001,0.002,0.046,
                         0,0.002,0.043,
                         0.001,0.002,0.041,
                         0,0.001,0.029
                         ),
                       byrow = TRUE, nrow = 10, ncol = 3)


n200p2power_005 = matrix(c(0.001,0.001,0.003,
                           0.004,0.013,0.003,
                           0.025,0.148,0.041,
                           0.324,0.642,0.178,
                           0.753,0.917,0.402,
                           0.949,0.991,0.687,
                           0.990,0.999,0.857,
                           0.999,1,0.943,
                           1,1,0.978,
                           1,1,0.994
                           ),
                         byrow = TRUE, nrow = 10, ncol = 3)




# Figure 5

n200p1fdr_01 = matrix(c(0.003,0.050,0.145,
                        0.010,0.036,0.088,
                        0,0.002,0.078,
                        0.011,0.022,0.070,
                        0.008,0.022,0.082,
                        0.007,0.021,0.085,
                        0.023,0.017,0.087,
                        0.013,0.018,0.091,
                        0.009,0.016,0.095,
                        0.008,0.010,0.106
                        ),
                      byrow = TRUE, nrow = 10, ncol = 3)


n200p1power_01 = matrix(c(0.001,0.002,0.010,
                          0.005,0.016,0.021,
                          0.017,0.054,0.057,
                          0.091,0.209,0.168,
                          0.278,0.499,0.366,
                          0.614,0.791,0.627,
                          0.830,0.928,0.803,
                          0.948,0.978,0.912,
                          0.975,0.994,0.964,
                          0.996,0.999,0.989
                          ),
                        byrow = TRUE, nrow = 10, ncol = 3)


n200p1.5fdr_01 = matrix(c(0.028,0.040,0.024,
                          0,0.017,0.059,
                          0.002,0.001,0.047,
                          0.004,0.007,0.090,
                          0.003,0.007,0.112,
                          0.006,0.009,0.101,
                          0.004,0.007,0.101,
                          0.004,0.011,0.081,
                          0.004,0.007,0.069,
                          0.006,0.011,0.075
                          ),
                        byrow = TRUE, nrow = 10, ncol = 3)


n200p1.5power_01 = matrix(c(0.001,0.001,0.002,
                            0.006,0.016,0.008,
                            0.033,0.104,0.068,
                            0.234,0.458,0.270,
                            0.606,0.823,0.577,
                            0.868,0.948,0.796,
                            0.974,0.993,0.915,
                            0.998,0.999,0.969,
                            1,1,0.990,
                            1,1,0.998
                            ),
                          byrow = TRUE, nrow = 10, ncol = 3)


# Figure 6

n200p2fdr_01 = matrix(c(0.020,0.010,0.070,
                        0.005,0.005,0.049,
                        0,0.006,0.075,
                        0.001,0.003,0.075,
                        0.002,0.005,0.077,
                        0.002,0.004,0.092,
                        0.004,0.006,0.072,
                        0.003,0.005,0.113,
                        0.002,0.005,0.089,
                        0.003,0.006,0.076
                        ),
                      byrow = TRUE, nrow = 10, ncol = 3)


n200p2power_01 = matrix(c(0.001,0.001,0.006,
                          0.007,0.021,0.008,
                          0.067,0.241,0.069,
                          0.415,0.697,0.238,
                          0.859,0.951,0.539,
                          0.978,0.995,0.763,
                          0.997,0.999,0.906,
                          1,1,0.971,
                          1,1,0.993,
                          1,1,0.998
                          ),
                        byrow = TRUE, nrow = 10, ncol = 3)




# Amplitude, 12 figures


# Figure 1-1

# Set x label, it is public.
amplevel = rep(c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1), times = 3)
# Set the type of methods, it is public.
type = rep(c('A','B','C'), each = 10)

points = c('A' = 15, 'B' = 16, 'C' = 17)

# Read the data into dataframe.
fdr11 = c(n200p1fdr_005[,1], n200p1fdr_005[,2], n200p1fdr_005[,3])
df11 = data.frame(amplevel = amplevel, type = type, fdr = fdr11)

# DRAW
n300p100fdr_rho = 
  ggplot(data = df11, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20","0.25"), limits = c(0,0.25)) + ggtitle("n = 300, d = 100") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n300p100fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 1-2

# Read the data into dataframe.
pwr12 = c(n200p1power_005[,1], n200p1power_005[,2], n200p1power_005[,3])
df12 = data.frame(amplevel = amplevel, type = type, power = pwr12)

# DRAW
n300p100power_rho = 
  ggplot(data = df12, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 300, d = 100") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n300p100power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 1-3

# Read the data into dataframe.
fdr13 = c(n200p1.5fdr_005[,1], n200p1.5fdr_005[,2], n200p1.5fdr_005[,3])
df13 = data.frame(amplevel = amplevel, type = type, fdr = fdr13)

# DRAW
n500p200fdr_rho = 
  ggplot(data = df13, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20","0.25"), limits = c(0,0.25)) + ggtitle("n = 500, d =200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n500p200fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 1-4

# Read the data into dataframe.
pwr14 = c(n200p1.5power_005[,1], n200p1.5power_005[,2], n200p1.5power_005[,3])
df14 = data.frame(amplevel = amplevel, type = type, power = pwr14)

# DRAW
n500p200power_rho = 
  ggplot(data = df14, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d =200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p200power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 1-9

# Read the data into dataframe.
fdr19 = c(n200p2fdr_005[,1], n200p2fdr_005[,2], n200p2fdr_005[,3])
df19 = data.frame(amplevel = amplevel, type = type, fdr = fdr19)

# DRAW
n500p750fdr_rho = 
  ggplot(data = df19, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20","0.25"), limits = c(0,0.25)) + ggtitle("n = 700, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n700p300fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr110 = c(n200p2power_005[,1], n200p2power_005[,2], n200p2power_005[,3])
df110 = data.frame(amplevel = amplevel, type = type, power = pwr110)

# DRAW
n500p750power_rho = 
  ggplot(data = df110, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 700, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n700p300power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)




# Amp, 12 figures


# Figure 2-1
# Set x label, it is public.
amp = rep(c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1), times = 3)

# Read the data into dataframe.
fdr21 = c(n200p1fdr_01[,1], n200p1fdr_01[,2], n200p1fdr_01[,3])
df21 = data.frame(amp = amp, type = type, fdr = fdr21)

# DRAW
n300p100fdr_amp = 
  ggplot(data = df21, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + ggtitle("n = 300, d = 100") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20","0.25"), limits = c(0,0.25))

# SAVE
ggsave("n300p100fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 2-2

# Read the data into dataframe.
pwr22 = c(n200p1power_01[,1], n200p1power_01[,2], n200p1power_01[,3])
df22 = data.frame(amp = amp, type = type, power = pwr22)

# DRAW
n300p100power_amp = 
  ggplot(data = df22, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 300, d = 100") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n300p100power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)



# Figure 2-3

# Read the data into dataframe.
fdr23 = c(n200p1.5fdr_01[,1], n200p1.5fdr_01[,2], n200p1.5fdr_01[,3])
df23 = data.frame(amp = amp, type = type, fdr = fdr23)

# DRAW
n500p200fdr_amp = 
  ggplot(data = df23, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + ggtitle("n = 500, d =200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20","0.25"), limits = c(0,0.25))

# SAVE
ggsave("n500p200fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 2-4

# Read the data into dataframe.
pwr24 = c(n200p1.5power_01[,1], n200p1.5power_01[,2], n200p1.5power_01[,3])
df24 = data.frame(amp = amp, type = type, power = pwr24)

# DRAW
n500p200power_amp = 
  ggplot(data = df24, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d =200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p200power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 2-9

# Read the data into dataframe.
fdr29 = c(n200p2fdr_01[,1], n200p2fdr_01[,2], n200p2fdr_01[,3])
df29 = data.frame(amp = amp, type = type, fdr = fdr29)

# DRAW
n500p750fdr_amp = 
  ggplot(data = df29, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + ggtitle("n = 700, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20","0.25"), limits = c(0,0.25))

# SAVE
ggsave("n700p300fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 2-10

# Read the data into dataframe.
pwr210 = c(n200p2power_01[,1], n200p2power_01[,2], n200p2power_01[,3])
df210 = data.frame(amp = amp, type = type, power = pwr210)

# DRAW
n500p750power_amp = 
  ggplot(data = df210, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 700, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n700p300power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)





