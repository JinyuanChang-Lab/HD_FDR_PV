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


# Figure 5

n200p1fdr_02 = matrix(c(0.013,0.090,0.195,
                        0.020,0.046,0.188,
                        0.012,0.042,0.178,
                        0.021,0.052,0.170,
                        0.018,0.062,0.182,
                        0.017,0.041,0.185,
                        0.033,0.057,0.187,
                        0.023,0.048,0.191,
                        0.019,0.046,0.195,
                        0.018,0.050,0.206
                        ),
                      byrow = TRUE, nrow = 10, ncol = 3)


n200p1power_02 = matrix(c(0.011,0.012,0.040,
                          0.015,0.026,0.081,
                          0.027,0.074,0.157,
                          0.191,0.309,0.268,
                          0.378,0.599,0.466,
                          0.714,0.861,0.727,
                          0.930,0.978,0.903,
                          0.968,0.998,0.942,
                          0.985,0.999,0.974,
                          0.998,0.999,0.999
                          ),
                        byrow = TRUE, nrow = 10, ncol = 3)


n200p1.5fdr_02 = matrix(c(0.128,0.140,0.144,
                          0.052,0.117,0.179,
                          0.042,0.041,0.197,
                          0.034,0.057,0.190,
                          0.043,0.077,0.212,
                          0.056,0.069,0.201,
                          0.044,0.077,0.201,
                          0.034,0.081,0.181,
                          0.054,0.087,0.169,
                          0.046,0.091,0.175
                          ),
                        byrow = TRUE, nrow = 10, ncol = 3)


n200p1.5power_02 = matrix(c(0.021,0.031,0.012,
                            0.036,0.056,0.028,
                            0.053,0.174,0.168,
                            0.334,0.458,0.270,
                            0.696,0.893,0.677,
                            0.928,0.978,0.896,
                            0.984,0.998,0.945,
                            0.999,0.999,0.989,
                            1,1,0.997,
                            1,1,0.999
                            ),
                          byrow = TRUE, nrow = 10, ncol = 3)


# Figure 6

n200p2fdr_02 = matrix(c(0.040,0.060,0.170,
                        0.045,0.095,0.149,
                        0.042,0.086,0.175,
                        0.025,0.073,0.175,
                        0.052,0.085,0.177,
                        0.042,0.074,0.192,
                        0.064,0.076,0.172,
                        0.053,0.085,0.213,
                        0.042,0.075,0.189,
                        0.063,0.076,0.176
                        ),
                      byrow = TRUE, nrow = 10, ncol = 3)


n200p2power_02 = matrix(c(0.041,0.091,0.016,
                          0.067,0.121,0.028,
                          0.097,0.281,0.089,
                          0.515,0.797,0.338,
                          0.899,0.981,0.639,
                          0.998,0.998,0.863,
                          0.999,0.999,0.956,
                          1,1,0.981,
                          1,1,0.998,
                          1,1,0.999
                          ),
                        byrow = TRUE, nrow = 10, ncol = 3)




# Amplitude, 12 figures


# Figure 1-1

# Set x label, it is public.
amplevel = rep(c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1), times = 3)
# Set the type of methods, it is public.
type = rep(c('A','B','C'), each = 10)

points = c('A' = 15, 'B' = 16, 'C' = 17)


# Amp, 12 figures


# Figure 2-1
# Set x label, it is public.
amp = rep(c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1), times = 3)

# Read the data into dataframe.
fdr21 = c(n200p1fdr_02[,1], n200p1fdr_02[,2], n200p1fdr_02[,3])
df21 = data.frame(amp = amp, type = type, fdr = fdr21)

# DRAW
n300p100fdr_amp = 
  ggplot(data = df21, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + ggtitle("n = 300, d = 100") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20","0.25"), limits = c(0,0.25))

# SAVE
ggsave("n300p100fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 2-2

# Read the data into dataframe.
pwr22 = c(n200p1power_02[,1], n200p1power_02[,2], n200p1power_02[,3])
df22 = data.frame(amp = amp, type = type, power = pwr22)

# DRAW
n300p100power_amp = 
  ggplot(data = df22, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 300, d = 100") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n300p100power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)



# Figure 2-3

# Read the data into dataframe.
fdr23 = c(n200p1.5fdr_02[,1], n200p1.5fdr_02[,2], n200p1.5fdr_02[,3])
df23 = data.frame(amp = amp, type = type, fdr = fdr23)

# DRAW
n500p200fdr_amp = 
  ggplot(data = df23, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + ggtitle("n = 500, d = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20","0.25"), limits = c(0,0.25))

# SAVE
ggsave("n500p200fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 2-4

# Read the data into dataframe.
pwr24 = c(n200p1.5power_02[,1], n200p1.5power_02[,2], n200p1.5power_02[,3])
df24 = data.frame(amp = amp, type = type, power = pwr24)

# DRAW
n500p200power_amp = 
  ggplot(data = df24, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 500, d = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n500p200power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 2-9

# Read the data into dataframe.
fdr29 = c(n200p2fdr_02[,1], n200p2fdr_02[,2], n200p2fdr_02[,3])
df29 = data.frame(amp = amp, type = type, fdr = fdr29)

# DRAW
n500p750fdr_amp = 
  ggplot(data = df29, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + ggtitle("n = 700, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20","0.25"), limits = c(0,0.25))

# SAVE
ggsave("n700p300fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)


# Figure 2-10

# Read the data into dataframe.
pwr210 = c(n200p2power_02[,1], n200p2power_02[,2], n200p2power_02[,3])
df210 = data.frame(amp = amp, type = type, power = pwr210)

# DRAW
n500p750power_amp = 
  ggplot(data = df210, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 1, by = 0.1), labels = c("0.10","0.20","0.30","0.40","0.50","0.60","0.70","0.80","0.90","1.00"), limits = c(0.1, 1)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 700, d = 300") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n700p300power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S5", width = 8, height = 6)





