library(ggplot2)


########################################################
#DATA

n600p600fdr_005 = matrix(c(0.113,0.156,0,0.313,0,
                         0.106,0.132,0,0.196,0,
                         0.077,0.147,0.003,0.144,0,
                         0.063,0.113,0.024,0.052,0,
                         0.074,0.113,0.015,0.039,0,
                         0.058,0.120,0.024,0.032,0.010,
                         0.055,0.109,0.023,0.047,0.006,
                         0.068,0.122,0.011,0.040,0,
                         0.061,0.107,0.021,0.052,0.003),
                       byrow = TRUE, nrow = 9, ncol = 5)


n600p600power_005 = matrix(c(0.008,0.015,0,0.027,0,
                           0.083,0.135,0,0.110,0,
                           0.328,0.449,0.009,0.288,0,
                           0.699,0.812,0.080,0.591,0,
                           0.883,0.935,0.050,0.856,0,
                           0.975,0.985,0.090,0.948,0.029,
                           0.991,0.997,0.080,0.990,0.020,
                           0.998,0.999,0.040,0.999,0,
                           1,1,0.070,1,0.010),
                         byrow = TRUE, nrow = 9, ncol = 5)


n600p600fdr_01 = matrix(c(0.111,0.159,0.020,0.343,0,
                        0.133,0.230,0.071,0.180,0.012,
                        0.120,0.189,0.097,0.093,0.028,
                        0.097,0.159,0.113,0.054,0.039,
                        0.092,0.153,0.115,0.065,0.033,
                        0.117,0.160,0.093,0.078,0.037,
                        0.110,0.167,0.107,0.083,0.043,
                        0.094,0.153,0.114,0.078,0.050,
                        0.108,0.161,0.123,0.083,0.044),
                      byrow = TRUE, nrow = 9, ncol = 5)


n600p600power_01 = matrix(c(0.011,0.019,0.015,0.035,0,
                          0.117,0.180,0.189,0.109,0.006,
                          0.455,0.548,0.668,0.301,0.069,
                          0.732,0.805,0.949,0.636,0.404,
                          0.915,0.947,0.988,0.873,0.787,
                          0.978,0.989,0.998,0.981,0.959,
                          0.995,0.997,1,0.996,0.989,
                          0.999,1,1,0.999,0.999,
                          1,1,1,1,1),
                        byrow = TRUE, nrow = 9, ncol = 5)


###########################################################

n800p800fdr_005 = matrix(c(0.092,0.155,0,0.258,0,
                           0.071,0.131,0,0.163,0,
                           0.065,0.120,0.019,0.072,0,
                           0.058,0.101,0.027,0.031,0,
                           0.055,0.109,0.012,0.022,0.003,
                           0.054,0.108,0.019,0.031,0.003,
                           0.064,0.128,0.009,0.039,0.003,
                           0.053,0.108,0.017,0.038,0.003,
                           0.059,0.109,0.015,0.039,0.005),
                         byrow = TRUE, nrow = 9, ncol = 5)


n800p800power_005 = matrix(c(0.010,0.014,0,0.029,0,
                             0.162,0.253,0,0.143,0,
                             0.532,0.661,0.058,0.420,0,
                             0.849,0.915,0.090,0.745,0,
                             0.950,0.971,0.040,0.917,0.010,
                             0.994,0.996,0.070,0.984,0.010,
                             0.997,0.997,0.030,0.997,0.010,
                             1,1,0.060,1,0.010,
                             1,1,0.060,1,0.020),
                           byrow = TRUE, nrow = 9, ncol = 5)


n800p800fdr_01 = matrix(c(0.138,0.253,0.026,0.359,0,
                          0.175,0.232,0.109,0.121,0.007,
                          0.109,0.184,0.119,0.071,0.026,
                          0.107,0.166,0.096,0.060,0.028,
                          0.103,0.170,0.094,0.064,0.047,
                          0.114,0.172,0.114,0.069,0.054,
                          0.108,0.181,0.102,0.083,0.034,
                          0.095,0.167,0.114,0.067,0.038,
                          0.097,0.169,0.103,0.075,0.038),
                        byrow = TRUE, nrow = 9, ncol = 5)


n800p800power_01 = matrix(c(0.015,0.030,0.027,0.033,0,
                            0.188,0.249,0.425,0.150,0.002,
                            0.609,0.705,0.873,0.462,0.124,
                            0.869,0.913,0.975,0.756,0.646,
                            0.974,0.985,1,0.969,0.925,
                            0.993,0.997,0.999,0.995,0.982,
                            0.999,1,1,1,0.997,
                            1,1,1,1,0.999,
                            1,1,1,1,0.999),
                          byrow = TRUE, nrow = 9, ncol = 5)

###########################################################

n1000p1000fdr_005 = matrix(c(0.086,0.195,0,0.343,0,
                         0.055,0.118,0.007,0.140,0,
                         0.057,0.126,0.012,0.051,0,
                         0.056,0.105,0.017,0.036,0,
                         0.046,0.112,0.010,0.034,0.006,
                         0.062,0.102,0.014,0.027,0.003,
                         0.051,0.106,0.014,0.031,0,
                         0.058,0.098,0.017,0.032,0,
                         0.056,0.108,0.015,0.035,0),
                       byrow = TRUE, nrow = 9, ncol = 5)


n1000p1000power_005 = matrix(c(0.023,0.036,0,0.048,0,
                           0.233,0.335,0.019,0.174,0,
                           0.713,0.805,0.040,0.486,0,
                           0.921,0.956,0.060,0.825,0,
                           0.986,0.991,0.030,0.964,0.020,
                           0.997,0.998,0.050,0.995,0.010,
                           1,1,0.050,1,0,
                           1,1,0.060,1,0,
                           1,1,0.050,1,0),
                         byrow = TRUE, nrow = 9, ncol = 5)


n1000p1000fdr_01 = matrix(c(0.181,0.290,0.021,0.297,0,
                        0.123,0.213,0.113,0.144,0.002,
                        0.110,0.176,0.090,0.068,0.025,
                        0.103,0.180,0.100,0.056,0.029,
                        0.092,0.171,0.113,0.051,0.031,
                        0.103,0.173,0.080,0.060,0.029,
                        0.100,0.169,0.102,0.059,0.031,
                        0.103,0.157,0.118,0.070,0.037,
                        0.097,0.168,0.083,0.052,0.039),
                      byrow = TRUE, nrow = 9, ncol = 5)


n1000p1000power_01 = matrix(c(0.025,0.037,0.037,0.041,0,
                          0.313,0.423,0.679,0.189,0.007,
                          0.737,0.817,0.961,0.497,0.201,
                          0.953,0.973,0.993,0.873,0.803,
                          0.993,0.997,1,0.979,0.971,
                          0.999,1,1,0.998,0.996,
                          0.999,0.999,1,1,1,
                          1,1,1,1,1,
                          1,1,1,1,1),
                        byrow = TRUE, nrow = 9, ncol = 5)

##########################################################


###DRAW

# fdr005, 6 figures

# Set x label, it is public.
amplevel = rep(c(0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5), times = 5)
# Set the type of methods, it is public.
type = rep(c('A','B','C','D','E'), each = 9)

points = c('A' = 15, 'B' = 16, 'C' = 17, 'D' = 18, 'E' = 15)

# Read the data into dataframe.
fdr11 = c(n600p600fdr_005[,1], n600p600fdr_005[,2], n600p600fdr_005[,3], n600p600fdr_005[,4], n600p600fdr_005[,5])
df11 = data.frame(amplevel = amplevel, type = type, fdr = fdr11)

# DRAW
n600p600fdr_005 = 
  ggplot(data = df11, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n600p600fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 1-2

# Read the data into dataframe.
pwr12 = c(n600p600power_005[,1], n600p600power_005[,2], n600p600power_005[,3], n600p600power_005[,4], n600p600power_005[,5])
df12 = data.frame(amplevel = amplevel, type = type, power = pwr12)

# DRAW
n600p600power_005 = 
  ggplot(data = df12, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n600p600power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 1-3

# Read the data into dataframe.
fdr13 = c(n800p800fdr_005[,1], n800p800fdr_005[,2], n800p800fdr_005[,3], n800p800fdr_005[,4], n800p800fdr_005[,5])
df13 = data.frame(amplevel = amplevel, type = type, fdr = fdr13)

# DRAW
n800p800fdr_005 = 
  ggplot(data = df13, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n800p800fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 1-4

# Read the data into dataframe.
pwr14 = c(n800p800power_005[,1], n800p800power_005[,2], n800p800power_005[,3], n800p800power_005[,4], n800p800power_005[,5])
df14 = data.frame(amplevel = amplevel, type = type, power = pwr14)

# DRAW
n800p800power_005 = 
  ggplot(data = df14, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n800p800power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 1-9

# Read the data into dataframe.
fdr19 = c(n1000p1000fdr_005[,1], n1000p1000fdr_005[,2], n1000p1000fdr_005[,3], n1000p1000fdr_005[,4], n1000p1000fdr_005[,5])
df19 = data.frame(amplevel = amplevel, type = type, fdr = fdr19)

# DRAW
n1000p1000fdr_005 = 
  ggplot(data = df19, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 1000, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n1000p1000fdr_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr110 = c(n1000p1000power_005[,1], n1000p1000power_005[,2], n1000p1000power_005[,3], n1000p1000power_005[,4], n1000p1000power_005[,5])
df110 = data.frame(amplevel = amplevel, type = type, power = pwr110)

# DRAW
n1000p1000power_005 = 
  ggplot(data = df110, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 1000, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n1000p1000power_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)




# fdr01, 6 figures


# Figure 2-1
# Set x label, it is public.
amp = rep(c(0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5), times = 5)

# Read the data into dataframe.
fdr21 = c(n600p600fdr_01[,1], n600p600fdr_01[,2], n600p600fdr_01[,3], n600p600fdr_01[,4], n600p600fdr_01[,5])
df21 = data.frame(amp = amp, type = type, fdr = fdr21)

# DRAW
n600p600fdr_01 = 
  ggplot(data = df21, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n600p600fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 2-2

# Read the data into dataframe.
pwr22 = c(n600p600power_01[,1], n600p600power_01[,2], n600p600power_01[,3], n600p600power_01[,4], n600p600power_01[,5])
df22 = data.frame(amp = amp, type = type, power = pwr22)

# DRAW
n600p600power_01 = 
  ggplot(data = df22, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n600p600power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)



# Figure 2-3

# Read the data into dataframe.
fdr23 = c(n800p800fdr_01[,1], n800p800fdr_01[,2], n800p800fdr_01[,3], n800p800fdr_01[,4], n800p800fdr_01[,5])
df23 = data.frame(amp = amp, type = type, fdr = fdr23)

# DRAW
n800p800fdr_01 = 
  ggplot(data = df23, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n800p800fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 2-4

# Read the data into dataframe.
pwr24 = c(n800p800power_01[,1], n800p800power_01[,2], n800p800power_01[,3], n800p800power_01[,4], n800p800power_01[,5])
df24 = data.frame(amp = amp, type = type, power = pwr24)

# DRAW
n800p800power_01 = 
  ggplot(data = df24, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n800p800power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 2-9

# Read the data into dataframe.
fdr29 = c(n1000p1000fdr_01[,1], n1000p1000fdr_01[,2], n1000p1000fdr_01[,3], n1000p1000fdr_01[,4], n1000p1000fdr_01[,5])
df29 = data.frame(amp = amp, type = type, fdr = fdr29)

# DRAW
n1000p1000fdr_01 = 
  ggplot(data = df29, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 1000, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n1000p1000fdr_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 2-10

# Read the data into dataframe.
pwr210 = c(n1000p1000power_01[,1], n1000p1000power_01[,2], n1000p1000power_01[,3], n1000p1000power_01[,4], n1000p1000power_01[,5])
df210 = data.frame(amp = amp, type = type, power = pwr210)

# DRAW
n1000p1000power_01 = 
  ggplot(data = df210, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 1000, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n1000p1000power_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)




