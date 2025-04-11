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

n200p1fdr_02 = matrix(c(0.179,0.175,0.219,0.316,0.422,0,
                         0.205,0.212,0.142,0.176,0.322,0.003,
                         0.153,0.154,0.152,0.167,0.227,0.054,
                         0.171,0.158,0.115,0.133,0.199,0.123,
                         0.155,0.140,0.096,0.124,0.198,0.132,
                         0.169,0.161,0.097,0.124,0.183,0.143,
                         0.183,0.173,0.110,0.127,0.205,0.136,
                         0.193,0.204,0.098,0.132,0.199,0.129,
                         0.193,0.181,0.110,0.125,0.184,0.131),
                       byrow = TRUE, nrow = 9, ncol = 6)


n200p1power_02 = matrix(c(0.029,0.033,0.016,0.029,0.043,0,
                           0.140,0.194,0.064,0.108,0.159,0.095,
                           0.329,0.444,0.234,0.335,0.467,0.321,
                           0.648,0.756,0.537,0.665,0.729,0.621,
                           0.873,0.931,0.792,0.871,0.931,0.854,
                           0.962,0.985,0.923,0.951,0.983,0.954,
                           0.994,0.997,0.977,0.987,0.994,0.997,
                           1,1,0.989,0.994,1,1,
                           1,1,1,1,1,1),
                         byrow = TRUE, nrow = 9, ncol = 6)





# Figure 2

n200p2fdr_02 = matrix(c(0.192,0.165,0.188,0.213,0.376,0.002,
                         0.165,0.154,0.148,0.168,0.252,0.054,
                         0.161,0.148,0.140,0.144,0.231,0.089,
                         0.164,0.168,0.141,0.134,0.221,0.167,
                         0.194,0.181,0.127,0.137,0.198,0.176,
                         0.201,0.187,0.140,0.146,0.202,0.156,
                         0.203,0.212,0.154,0.149,0.204,0.164,
                         0.228,0.224,0.115,0.129,0.190,0.171,
                         0.220,0.202,0.134,0.148,0.198,0.159),
                       byrow = TRUE, nrow = 9, ncol = 6)


n200p2power_02 = matrix(c(0.041,0.055,0.027,0.048,0.063,0.042,
                           0.221,0.309,0.126,0.197,0.249,0.104,
                           0.532,0.673,0.457,0.557,0.612,0.432,
                           0.828,0.897,0.792,0.854,0.891,0.753,
                           0.970,0.983,0.947,0.963,0.983,0.921,
                           0.996,0.998,0.986,0.992,0.999,0.956,
                           0.999,1,0.997,0.999,1,0.987,
                           1,1,1,1,1,0.998,
                           1,1,1,1,1,0.999),
                         byrow = TRUE, nrow = 9, ncol = 6)


n200p2.5fdr_02 = matrix(c(0.267,0.227,0.211,0.264,0.421,0.012,
                           0.137,0.155,0.163,0.172,0.267,0.092,
                           0.154,0.144,0.168,0.155,0.189,0.123,
                           0.169,0.170,0.142,0.158,0.214,0.167,
                           0.217,0.218,0.143,0.158,0.189,0.178,
                           0.226,0.213,0.144,0.160,0.182,0.176,
                           0.225,0.231,0.117,0.157,0.190,0.171,
                           0.239,0.233,0.154,0.161,0.195,0.169,
                           0.232,0.215,0.159,0.159,0.174,0.178),
                       byrow = TRUE, nrow = 9, ncol = 6)


n200p2.5power_02 = matrix(c(0.075,0.099,0.033,0.065,0.081,0.053,
                           0.326,0.434,0.253,0.352,0.351,0.134,
                           0.717,0.810,0.657,0.747,0.755,0.543,
                           0.947,0.970,0.897,0.937,0.967,0.821,
                           0.995,0.998,0.988,0.992,0.997,0.942,
                           0.995,0.999,0.999,0.999,1,0.978,
                           1,1,1,1,1,0.998,
                           1,1,0.999,1,1,1,
                           1,1,1,1,1,1),
                         byrow = TRUE, nrow = 9, ncol = 6)



# Figure 5


# Amplitude, 12 figures


# Figure 1-1

# Set x label, it is public.
amplevel = rep(c(0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5), times = 6)
# Set the type of methods, it is public.
type = rep(c('A','B','C','D','E','F'), each = 9)

points = c('A' = 15, 'B' = 16, 'C' = 15, 'D' = 16, 'E' = 17, 'F' = 17)

# Read the data into dataframe.
fdr11 = c(n200p1fdr_02[,1], n200p1fdr_02[,2], n200p1fdr_02[,3], n200p1fdr_02[,4], n200p1fdr_02[,5], n200p1fdr_02[,6])
df11 = data.frame(amplevel = amplevel, type = type, fdr = fdr11)

# DRAW
n400p400fdr_rho = 
  ggplot(data = df11, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 400, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n400p400fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)


# Figure 1-2

# Read the data into dataframe.
pwr12 = c(n200p1power_02[,1], n200p1power_02[,2], n200p1power_02[,3], n200p1power_02[,4], n200p1power_02[,5], n200p1power_02[,6])
df12 = data.frame(amplevel = amplevel, type = type, power = pwr12)

# DRAW
n400p400power_rho = 
  ggplot(data = df12, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 400, d = 400") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n400p400power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)




# Figure 1-9

# Read the data into dataframe.
fdr19 = c(n200p2fdr_02[,1], n200p2fdr_02[,2], n200p2fdr_02[,3], n200p2fdr_02[,4], n200p2fdr_02[,5], n200p2fdr_02[,6])
df19 = data.frame(amplevel = amplevel, type = type, fdr = fdr19)

# DRAW
n500p750fdr_rho = 
  ggplot(data = df19, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n600p600fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr110 = c(n200p2power_02[,1], n200p2power_02[,2], n200p2power_02[,3], n200p2power_02[,4], n200p2power_02[,5], n200p2power_02[,6])
df110 = data.frame(amplevel = amplevel, type = type, power = pwr110)

# DRAW
n500p750power_rho = 
  ggplot(data = df110, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n600p600power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)



# Figure 1-9

# Read the data into dataframe.
fdr192 = c(n200p2.5fdr_02[,1], n200p2.5fdr_02[,2], n200p2.5fdr_02[,3], n200p2.5fdr_02[,4], n200p2.5fdr_02[,5], n200p2.5fdr_02[,6])
df192 = data.frame(amplevel = amplevel, type = type, fdr = fdr192)

# DRAW
n500p750fdr_rho = 
  ggplot(data = df192, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("n800p800fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr1102 = c(n200p2.5power_02[,1], n200p2.5power_02[,2], n200p2.5power_02[,3], n200p2.5power_02[,4], n200p2.5power_02[,5], n200p2.5power_02[,6])
df1102 = data.frame(amplevel = amplevel, type = type, power = pwr1102)

# DRAW
n500p750power_rho = 
  ggplot(data = df1102, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dotted", "dashed", "twodash")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n800p800power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S4", width = 8, height = 6)

