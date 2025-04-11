library(ggplot2)


########################################################
#DATA

ind_02 = matrix(c(0.19,0.21,0,0.03,
                            0.18,0.18,0,0.04,
                            0.18,0.19,0,0.02,
                            0.19,0.2,0,0.05,
                            0.18,0.17,0,0.02,
                            0.21,0.18,0,0.03,
                            0.19,0.19,0,0.05,
                            0.2,0.21,0,0.02,
                            0.18,0.2,0,0.04,
                            0.19,0.19,0,0.03,
                            0.21,0.19,0,0.03
                            ),
                          byrow = TRUE, nrow =11, ncol = 4)


###########################################################

AR1_02 = matrix(c(0.19,0.21,0,0.02,
                           0.19,0.19,0,0.04,
                           0.2,0.21,0,0.03,
                           0.21,0.17,0,0.04,
                           0.18,0.18,0,0.01,
                           0.21,0.17,0,0.02,
                           0.18,0.18,0,0.01,
                           0.19,0.21,0,0.01,
                           0.2,0.18,0,0.02,
                           0.19,0.19,0,0.01,
                           0.2,0.21,0,0.04
                           ),
                         byrow = TRUE, nrow =11, ncol = 4)


block_02 = matrix(c(0.19,0.18,0,0.03,
                             0.2,0.2,0,0.01,
                             0.21,0.2,0,0.02,
                             0.18,0.19,0,0.02,
                             0.19,0.18,0,0.03,
                             0.2,0.21,0,0.02,
                             0.18,0.18,0,0.01,
                             0.19,0.21,0,0.02,
                             0.2,0.19,0,0.02,
                             0.19,0.19,0,0.01,
                             0.21,0.2,0,0.01
                             ),
                           byrow = TRUE, nrow =11, ncol = 4)


indL_02 = matrix(c(0.2,0.21,0,0.03,
                               0.19,0.2,0,0.04,
                               0.19,0.17,0,0.03,
                               0.2,0.2,0,0.02,
                               0.19,0.18,0,0.02,
                               0.17,0.21,0,0.01,
                               0.19,0.2,0,0.03,
                               0.19,0.18,0,0.02,
                               0.2,0.2,0,0.04,
                               0.21,0.18,0,0.03,
                               0.19,0.19,0,0.03
                               ),
                             byrow = TRUE, nrow =11, ncol = 4)


AR1L_02 = matrix(c(0.19,0.21,0,0.03,
                            0.19,0.2,0,0.01,
                            0.19,0.18,0,0.02,
                            0.2,0.21,0,0.04,
                            0.18,0.19,0,0.02,
                            0.19,0.19,0,0.03,
                            0.21,0.2,0,0.01,
                            0.20,0.19,0,0.02,
                            0.19,0.21,0,0.01,
                            0.20,0.19,0,0.03,
                            0.18,0.17,0,0.02
                            ),
                          byrow = TRUE, nrow =11, ncol = 4)


blockL_02 = matrix(c(0.19,0.2,0,0.03,
                              0.19,0.2,0,0.04,
                              0.21,0.19,0,0.03,
                              0.18,0.2,0,0.02,
                              0.19,0.18,0,0.03,
                              0.19,0.19,0,0.02,
                              0.2,0.17,0,0.02,
                              0.2,0.2,0,0.02,
                              0.19,0.17,0,0.04,
                              0.19,0.19,0,0.02,
                              0.21,0.18,0,0.01
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



# Figure 1-3

# Read the data into dataframe.
fdr13 = c(AR1_02[,1], AR1_02[,2], AR1_02[,3], AR1_02[,4])
df13 = data.frame(amplevel = amplevel, type = type, fdr = fdr13)

# DRAW
AR1_02 = 
  ggplot(data = df13, mapping = aes(x = amplevel, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(200, 400, by = 20), labels = c("200", "220", "240", "260", "280", "300", "320", "340", "360", "380", "400")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [2], n = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) 

# SAVE
ggsave("AR1_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 1-4

# Read the data into dataframe.
pwr14 = c(block_02[,1], block_02[,2], block_02[,3], block_02[,4])
df14 = data.frame(amplevel = amplevel, type = type, power = pwr14)

# DRAW
block_02 = 
  ggplot(data = df14, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(200, 400, by = 20), labels = c("200", "220", "240", "260", "280", "300", "320", "340", "360", "380", "400")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [3], n = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("block_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)




# Figure 2-2

# Read the data into dataframe.
pwr22 = c(ind_02[,1], ind_02[,2], ind_02[,3], ind_02[,4])
df22 = data.frame(amplevel = amplevel, type = type, power = pwr22)

# DRAW
ind_02 = 
  ggplot(data = df22, mapping = aes(x = amplevel, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(200, 400, by = 20), labels = c("200", "220", "240", "260", "280", "300", "320", "340", "360", "380", "400")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [1], n = 200") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("ind_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)




###########################################################################
# L, 6 figures



# Figure 2-1
# Set x label, it is public.
amp = rep(c(500,550,600,650,700,750,800,850,900,950,1000), times = 4)



# Figure 2-9

# Read the data into dataframe.
fdr29 = c(AR1L_02[,1], AR1L_02[,2], AR1L_02[,3], AR1L_02[,4])
df29 = data.frame(amp = amp, type = type, fdr = fdr29)

# DRAW
AR1L_02 = 
  ggplot(data = df29, mapping = aes(x = amp, y = fdr, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(500, 1000, by = 50), labels = c("500", "550", "600", "650", "700", "750", "800", "850", "900", "950", "1000")) + ggtitle("Setting [2], n = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5)) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25))

# SAVE
ggsave("AR1L_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)


# Figure 2-10

# Read the data into dataframe.
pwr210 = c(blockL_02[,1], blockL_02[,2], blockL_02[,3], blockL_02[,4])
df210 = data.frame(amp = amp, type = type, power = pwr210)

# DRAW
blockL_02 = 
  ggplot(data = df210, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(500, 1000, by = 50), labels = c("500", "550", "600", "650", "700", "750", "800", "850", "900", "950", "1000")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [3], n = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("blockL_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)



# Figure 1-10

# Read the data into dataframe.
pwr110 = c(indL_02[,1], indL_02[,2], indL_02[,3], indL_02[,4])
df110 = data.frame(amp = amp, type = type, power = pwr110)

# DRAW
indL_02 = 
  ggplot(data = df110, mapping = aes(x = amp, y = power, colour = type, shape = type, linetype = type)) + scale_linetype_manual(values=c("solid", "solid", "dotted", "dashed")) + scale_shape_manual(values = points)+ geom_line(linewidth = 2) + geom_point(size = 4.5) + scale_x_continuous(name = "d", breaks = seq(500, 1000, by = 50), labels = c("500", "550", "600", "650", "700", "750", "800", "850", "900", "950", "1000")) + scale_y_continuous(name = "Simulated FDR", breaks = seq(0, 0.25, by = 0.05), labels = c("0.00","0.05", "0.10", "0.15", "0.20", "0.25"), limits = c(0,0.25)) + ggtitle("Setting [1], n = 500") + theme(legend.position = 'none', text = element_text(size = 27), plot.title = element_text(hjust = 0.5))

# SAVE
ggsave("indL_02.pdf", device = "pdf", path = "C:/Users/朱正天/Desktop/Knockoff_code/Knockoff_pre/S1", width = 8, height = 6)

