library(ggplot2)


########################################################
#DATA

ind_005 = matrix(c(0.03,0.05,0,0,
                           0.04,0.03,0,0,
                           0.05,0.03,0,0,
                           0.03,0.05,0,0,
                           0.03,0.03,0,0,
                           0.05,0.06,0,0,
                           0.06,0.05,0,0,
                           0.04,0.05,0,0,
                           0.05,0.03,0,0,
                           0.04,0.04,0,0,
                           0.03,0.06,0,0
                           ),
                         byrow = TRUE, nrow = 11, ncol = 4)


AR1_005 = matrix(c(0.03,0.02,0,0,
                             0.04,0.05,0,0,
                             0.04,0.04,0,0,
                             0.05,0.05,0,0,
                             0.05,0.06,0,0,
                             0.04,0.06,0,0,
                             0.03,0.05,0,0,
                             0.04,0.05,0,0,
                             0.05,0.04,0,0,
                             0.05,0.04,0,0,
                             0.03,0.06,0,0
                             ),
                           byrow = TRUE, nrow = 11, ncol = 4)


block_005 = matrix(c(0.03,0.08,0,0,
                          0.04,0.06,0,0,
                          0.05,0.05,0,0,
                          0.02,0.05,0,0,
                          0.04,0.04,0,0,
                          0.05,0.03,0,0,
                          0.06,0.06,0,0,
                          0.05,0.04,0,0,
                          0.02,0.05,0,0,
                          0.06,0.06,0,0,
                          0.04,0.05,0,0
                          ),
                        byrow = TRUE, nrow =11, ncol = 4)


ind_01 = matrix(c(0.07,0.11,0,0.01,
                            0.1,0.08,0,0,
                            0.09,0.09,0,0,
                            0.08,0.1,0,0.01,
                            0.09,0.07,0,0.02,
                            0.1,0.08,0,0.01,
                            0.1,0.09,0,0,
                            0.11,0.11,0,0.02,
                            0.08,0.1,0,0.01,
                            0.07,0.09,0,0,
                            0.11,0.09,0,0
                            ),
                          byrow = TRUE, nrow =11, ncol = 4)


###########################################################

AR1_01 = matrix(c(0.07,0.11,0,0.01,
                           0.08,0.09,0,0.01,
                           0.09,0.11,0,0.01,
                           0.11,0.07,0,0.02,
                           0.08,0.08,0,0,
                           0.1,0.07,0,0,
                           0.09,0.08,0,0.01,
                           0.08,0.11,0,0.01,
                           0.11,0.08,0,0,
                           0.09,0.09,0,0.01,
                           0.1,0.11,0,0
                           ),
                         byrow = TRUE, nrow =11, ncol = 4)


block_01 = matrix(c(0.08,0.08,0,0,
                             0.09,0.09,0,0.01,
                             0.11,0.1,0,0,
                             0.1,0.09,0,0.01,
                             0.09,0.08,0,0.01,
                             0.1,0.11,0,0.01,
                             0.08,0.08,0,0,
                             0.09,0.11,0,0.02,
                             0.11,0.09,0,0.02,
                             0.09,0.09,0,0.01,
                             0.11,0.1,0,0
                             ),
                           byrow = TRUE, nrow =11, ncol = 4)


indL_005 = matrix(c(0.04,0.05,0,0,
                          0.02,0.04,0,0,
                          0.04,0.02,0,0,
                          0.03,0.04,0,0,
                          0.04,0.02,0,0,
                          0.02,0.04,0,0,
                          0.02,0.05,0,0,
                          0.04,0.02,0,0,
                          0.03,0.02,0,0,
                          0.04,0.04,0,0,
                          0.04,0.06,0,0
                          ),
                        byrow = TRUE, nrow =11, ncol = 4)


AR1L_005 = matrix(c(0.03,0.04,0,0,
                            0.05,0.03,0,0,
                            0.02,0.05,0,0,
                            0.04,0.04,0,0,
                            0.03,0.05,0,0,
                            0.05,0.03,0,0,
                            0.05,0.03,0,0,
                            0.02,0.05,0,0,
                            0.04,0.04,0,0,
                            0.03,0.04,0,0,
                            0.05,0.03,0,0
                            ),
                          byrow = TRUE, nrow =11, ncol = 4)

###########################################################

blockL_005 = matrix(c(0.04,0.04,0,0,
                             0.03,0.05,0,0,
                             0.03,0.03,0,0,
                             0.05,0.04,0,0,
                             0.04,0.05,0,0,
                             0.05,0.05,0,0,
                             0.05,0.03,0,0,
                             0.03,0.06,0,0,
                             0.04,0.04,0,0,
                             0.05,0.04,0,0,
                             0.04,0.05,0,0
                             ),
                           byrow = TRUE, nrow =11, ncol = 4)


indL_01 = matrix(c(0.1,0.11,0,0.01,
                               0.08,0.1,0,0.01,
                               0.09,0.07,0,0.02,
                               0.09,0.1,0,0.01,
                               0.08,0.08,0,0,
                               0.07,0.11,0,0.01,
                               0.09,0.1,0,0,
                               0.09,0.08,0,0.02,
                               0.08,0.1,0,0,
                               0.11,0.08,0,0.01,
                               0.09,0.09,0,0.01
                               ),
                             byrow = TRUE, nrow =11, ncol = 4)


AR1L_01 = matrix(c(0.08,0.11,0,0,
                            0.08,0.1,0,0.01,
                            0.09,0.08,0,0.02,
                            0.1,0.11,0,0,
                            0.08,0.09,0,0.02,
                            0.09,0.09,0,0,
                            0.08,0.1,0,0.01,
                            0.10,0.09,0,0,
                            0.08,0.11,0,0.01,
                            0.10,0.09,0,0,
                            0.08,0.07,0,0
                            ),
                          byrow = TRUE, nrow =11, ncol = 4)


blockL_01 = matrix(c(0.09,0.1,0,0,
                              0.07,0.1,0,0.01,
                              0.1,0.09,0,0.02,
                              0.08,0.1,0,0,
                              0.09,0.08,0,0,
                              0.07,0.09,0,0,
                              0.08,0.07,0,0.02,
                              0.1,0.1,0,0.02,
                              0.09,0.07,0,0,
                              0.09,0.09,0,0.02,
                              0.11,0.08,0,0.01
                              ),
                            byrow = TRUE, nrow =11, ncol = 4)

##########################################################


###DRAW

# S, 6 figures

# Set x label, it is public.
amplevel = rep(c(200,220,240,260,280,300,320,340,360,380,400), times = 4)
# Set the type of methods, it is public.
type = rep(c('A','B','C','D'), each = 11)

points = c('A' = 15, 'B' = 16, 'C' = 17, 'D' = 18)

# Read the data into dataframe.
fdr11 = c(ind_005[,1], ind_005[,2], ind_005[,3], ind_005[,4])
df11 = data.frame(amplevel = amplevel, type = type, fdr = fdr11)

# DRAW
ind_005 = 
  ggplot(data = df11, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(200, 400, by = 20), labels = c("200", "220", "240", "260", "280", "300", "320", "340", "360", "380", "400")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [1], n = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("ind_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 1-2

# Read the data into dataframe.
pwr12 = c(AR1_005[,1], AR1_005[,2], AR1_005[,3], AR1_005[,4])
df12 = data.frame(amplevel = amplevel, type = type, power = pwr12)

# DRAW
AR1_005 = 
  ggplot(data = df12, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(200, 400, by = 20), labels = c("200", "220", "240", "260", "280", "300", "320", "340", "360", "380", "400")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [2], n = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("AR1_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 1-3

# Read the data into dataframe.
fdr13 = c(AR1_01[,1], AR1_01[,2], AR1_01[,3], AR1_01[,4])
df13 = data.frame(amplevel = amplevel, type = type, fdr = fdr13)

# DRAW
AR1_01 = 
  ggplot(data = df13, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(200, 400, by = 20), labels = c("200", "220", "240", "260", "280", "300", "320", "340", "360", "380", "400")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [2], n = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("AR1_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 1-4

# Read the data into dataframe.
pwr14 = c(block_01[,1], block_01[,2], block_01[,3], block_01[,4])
df14 = data.frame(amplevel = amplevel, type = type, power = pwr14)

# DRAW
block_01 = 
  ggplot(data = df14, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(200, 400, by = 20), labels = c("200", "220", "240", "260", "280", "300", "320", "340", "360", "380", "400")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [3], n = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("block_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)



# Read the data into dataframe.
fdr21 = c(block_005[,1], block_005[,2], block_005[,3], block_005[,4])
df21 = data.frame(amplevel = amplevel, type = type, fdr = fdr21)

# DRAW
block_005 = 
  ggplot(data = df21, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(200, 400, by = 20), labels = c("200", "220", "240", "260", "280", "300", "320", "340", "360", "380", "400")) + ggtitle("Setting [3], n = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25))

# SAVE
ggsave("block_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 2-2

# Read the data into dataframe.
pwr22 = c(ind_01[,1], ind_01[,2], ind_01[,3], ind_01[,4])
df22 = data.frame(amplevel = amplevel, type = type, power = pwr22)

# DRAW
ind_01 = 
  ggplot(data = df22, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(200, 400, by = 20), labels = c("200", "220", "240", "260", "280", "300", "320", "340", "360", "380", "400")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [1], n = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("ind_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)




###########################################################################
# L, 6 figures



# Figure 2-1
# Set x label, it is public.
amp = rep(c(500,550,600,650,700,750,800,850,900,950,1000), times = 4)


# Figure 2-3

# Read the data into dataframe.
fdr23 = c(indL_005[,1], indL_005[,2], indL_005[,3], indL_005[,4])
df23 = data.frame(amp = amp, type = type, fdr = fdr23)

# DRAW
indL_005 = 
  ggplot(data = df23, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(500, 1000, by = 50), labels = c("500", "550", "600", "650", "700", "750", "800", "850", "900", "950", "1000")) + ggtitle("Setting [1], n = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25))

# SAVE
ggsave("indL_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 2-4

# Read the data into dataframe.
pwr24 = c(AR1L_005[,1], AR1L_005[,2], AR1L_005[,3], AR1L_005[,4])
df24 = data.frame(amp = amp, type = type, power = pwr24)

# DRAW
AR1L_005 = 
  ggplot(data = df24, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(500, 1000, by = 50), labels = c("500", "550", "600", "650", "700", "750", "800", "850", "900", "950", "1000")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [2], n = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("AR1L_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 2-9

# Read the data into dataframe.
fdr29 = c(AR1L_01[,1], AR1L_01[,2], AR1L_01[,3], AR1L_01[,4])
df29 = data.frame(amp = amp, type = type, fdr = fdr29)

# DRAW
AR1L_01 = 
  ggplot(data = df29, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(500, 1000, by = 50), labels = c("500", "550", "600", "650", "700", "750", "800", "850", "900", "950", "1000")) + ggtitle("Setting [2], n = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25))

# SAVE
ggsave("AR1L_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 2-10

# Read the data into dataframe.
pwr210 = c(blockL_01[,1], blockL_01[,2], blockL_01[,3], blockL_01[,4])
df210 = data.frame(amp = amp, type = type, power = pwr210)

# DRAW
blockL_01 = 
  ggplot(data = df210, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(500, 1000, by = 50), labels = c("500", "550", "600", "650", "700", "750", "800", "850", "900", "950", "1000")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [3], n = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("blockL_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 1-9

# Read the data into dataframe.
fdr19 = c(blockL_005[,1], blockL_005[,2], blockL_005[,3], blockL_005[,4])
df19 = data.frame(amp = amp, type = type, fdr = fdr19)

# DRAW
blockL_005 = 
  ggplot(data = df19, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(500, 1000, by = 50), labels = c("500", "550", "600", "650", "700", "750", "800", "850", "900", "950", "1000")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [3], n = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("blockL_005.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 1-10

# Read the data into dataframe.
pwr110 = c(indL_01[,1], indL_01[,2], indL_01[,3], indL_01[,4])
df110 = data.frame(amp = amp, type = type, power = pwr110)

# DRAW
indL_01 = 
  ggplot(data = df110, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(500, 1000, by = 50), labels = c("500", "550", "600", "650", "700", "750", "800", "850", "900", "950", "1000")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [1], n = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("indL_01.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)

