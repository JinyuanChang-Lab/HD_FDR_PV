library(ggplot2)


########################################################
#DATA


n600p600fdr_02 = matrix(c(0.276,0.385,0.020,0.304,0,
                        0.287,0.368,0.171,0.225,0.112,
                        0.205,0.272,0.197,0.114,0.128,
                        0.197,0.250,0.213,0.148,0.139,
                        0.185,0.250,0.215,0.141,0.133,
                        0.184,0.241,0.193,0.135,0.137,
                        0.165,0.237,0.207,0.146,0.143,
                        0.175,0.246,0.214,0.162,0.150,
                        0.177,0.253,0.223,0.140,0.144),
                      byrow = TRUE, nrow = 9, ncol = 5)


n600p600power_02 = matrix(c(0.021,0.027,0.032,0.028,0,
                          0.167,0.224,0.289,0.111,0.016,
                          0.499,0.597,0.768,0.377,0.269,
                          0.787,0.845,0.978,0.716,0.604,
                          0.933,0.958,0.998,0.931,0.887,
                          0.982,0.991,0.999,0.981,0.969,
                          0.996,0.999,1,1,0.996,
                          0.999,1,1,0.999,0.999,
                          1,1,1,1,1),
                        byrow = TRUE, nrow = 9, ncol = 5)


###########################################################


n800p800fdr_02 = matrix(c(0.267,0.339,0.026,0.342,0,
                          0.254,0.309,0.209,0.173,0.007,
                          0.180,0.267,0.219,0.142,0.026,
                          0.182,0.272,0.196,0.115,0.028,
                          0.189,0.264,0.194,0.144,0.047,
                          0.177,0.267,0.214,0.142,0.054,
                          0.181,0.251,0.202,0.133,0.034,
                          0.175,0.251,0.214,0.135,0.038,
                          0.194,0.258,0.203,0.139,0.038),
                        byrow = TRUE, nrow = 9, ncol = 5)


n800p800power_02 = matrix(c(0.021,0.027,0.036,0.023,0,
                            0.245,0.306,0.525,0.167,0.022,
                            0.663,0.730,0.913,0.537,0.324,
                            0.905,0.934,0.985,0.837,0.746,
                            0.975,0.982,1,0.976,0.945,
                            0.995,0.997,0.999,0.997,0.987,
                            1,1,1,0.999,0.999,
                            1,1,1,1,0.999,
                            1,1,1,1,0.999),
                          byrow = TRUE, nrow = 9, ncol = 5)

###########################################################


n1000p1000fdr_02 = matrix(c(0.286,0.398,0.041,0.323,0,
                        0.211,0.288,0.213,0.141,0.002,
                        0.185,0.262,0.190,0.141,0.025,
                        0.172,0.247,0.200,0.126,0.029,
                        0.199,0.251,0.213,0.120,0.031,
                        0.172,0.278,0.180,0.115,0.029,
                        0.173,0.263,0.202,0.131,0.031,
                        0.195,0.267,0.218,0.122,0.037,
                        0.173,0.268,0.183,0.131,0.039),
                      byrow = TRUE, nrow = 9, ncol = 5)


n1000p1000power_02 = matrix(c(0.041,0.047,0.047,0.037,0,
                          0.383,0.478,0.779,0.208,0.017,
                          0.784,0.841,0.981,0.620,0.251,
                          0.962,0.971,0.996,0.904,0.863,
                          0.997,0.999,1,0.989,0.981,
                          0.999,1,1,0.999,0.999,
                          1,1,1,1,1,
                          1,1,1,1,1,
                          1,1,1,1,1),
                        byrow = TRUE, nrow = 9, ncol = 5)

##########################################################


###DRAW


# fdr01, 6 figures


# Figure 2-1
# Set x label, it is public.
amp = rep(c(0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5), times = 5)

type = rep(c('A','B','C','D','E'), each = 9)

points = c('A' = 15, 'B' = 16, 'C' = 17, 'D' = 18, 'E' = 15)

# Read the data into dataframe.
fdr21 = c(n600p600fdr_02[,1], n600p600fdr_02[,2], n600p600fdr_02[,3], n600p600fdr_02[,4], n600p600fdr_02[,5])
df21 = data.frame(amp = amp, type = type, fdr = fdr21)

# DRAW
n600p600fdr_02 = 
  ggplot(data = df21, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n600p600fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 2-2

# Read the data into dataframe.
pwr22 = c(n600p600power_02[,1], n600p600power_02[,2], n600p600power_02[,3], n600p600power_02[,4], n600p600power_02[,5])
df22 = data.frame(amp = amp, type = type, power = pwr22)

# DRAW
n600p600power_02 = 
  ggplot(data = df22, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 600, d = 600") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n600p600power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)



# Figure 2-3

# Read the data into dataframe.
fdr23 = c(n800p800fdr_02[,1], n800p800fdr_02[,2], n800p800fdr_02[,3], n800p800fdr_02[,4], n800p800fdr_02[,5])
df23 = data.frame(amp = amp, type = type, fdr = fdr23)

# DRAW
n800p800fdr_02 = 
  ggplot(data = df23, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n800p800fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 2-4

# Read the data into dataframe.
pwr24 = c(n800p800power_02[,1], n800p800power_02[,2], n800p800power_02[,3], n800p800power_02[,4], n800p800power_02[,5])
df24 = data.frame(amp = amp, type = type, power = pwr24)

# DRAW
n800p800power_02 = 
  ggplot(data = df24, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 800, d = 800") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n800p800power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 2-9

# Read the data into dataframe.
fdr29 = c(n1000p1000fdr_02[,1], n1000p1000fdr_02[,2], n1000p1000fdr_02[,3], n1000p1000fdr_02[,4], n1000p1000fdr_02[,5])
df29 = data.frame(amp = amp, type = type, fdr = fdr29)

# DRAW
n1000p1000fdr_02 = 
  ggplot(data = df29, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + ggtitle("n = 1000, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.6, by = 0.1), labels = c("0.00","0.10", "0.20", "0.30", "0.40", "0.50", "0.60"), limits = c(0,0.6))

# SAVE
ggsave("n1000p1000fdr_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)


# Figure 2-10

# Read the data into dataframe.
pwr210 = c(n1000p1000power_02[,1], n1000p1000power_02[,2], n1000p1000power_02[,3], n1000p1000power_02[,4], n1000p1000power_02[,5])
df210 = data.frame(amp = amp, type = type, power = pwr210)

# DRAW
n1000p1000power_02 = 
  ggplot(data = df210, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "Amplitude", breaks = seq(0.1, 0.5, by = 0.05), labels = c("0.10", "0.15", "0.20", "0.25", "0.30", "0.35", "0.40", "0.45","0.50"), limits = c(0.1, 0.5)) + scale_y_continuous(name = "Simulated power", breaks = seq(0, 1, by = 0.25), labels = c("0.00","0.25", "0.50", "0.75", "1.00"), limits = c(0,1)) + ggtitle("n = 1000, d = 1000") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("n1000p1000power_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S3", width = 8, height = 6)




