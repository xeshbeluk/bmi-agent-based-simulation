data <- data.frame(read.csv("0100.csv"))

data$center_x1 <- scale(data$X1)
data$center_x2 <- scale(data$X2)
data$center_x3 <- scale(data$X3)
data$center_x4 <- scale(data$X4)
data$center_x5 <- scale(data$X5)
data$center_x6 <- scale(data$X6)
data$center_x7 <- scale(data$X7)
data$center_x8 <- scale(data$X8)
data$center_x9 <- scale(data$X9)
data$center_x0 <- scale(data$X10)

data_c <- data.frame(data$center_x1, data$center_x2, data$center_x3, data$center_x4, 
                     data$center_x5, data$center_x6, data$center_x7, data$center_x8, 
                     data$center_x9, data$center_x0)

data_c$center_means <- rowMeans(data_c)


data_2 <- data.frame(read.csv("0104.csv"))

data_2$center_x1 <- scale(data_2$X1)
data_2$center_x2 <- scale(data_2$X2)
data_2$center_x3 <- scale(data_2$X3)
data_2$center_x4 <- scale(data_2$X4)
data_2$center_x5 <- scale(data_2$X5)
data_2$center_x6 <- scale(data_2$X6)
data_2$center_x7 <- scale(data_2$X7)
data_2$center_x8 <- scale(data_2$X8)
data_2$center_x9 <- scale(data_2$X9)
data_2$center_x0 <- scale(data_2$X10)

data_c2 <- data.frame(data_2$center_x1, data_2$center_x2, data_2$center_x3, 
                      data_2$center_x4, data_2$center_x5, data_2$center_x6, 
                      data_2$center_x7, data_2$center_x8, data_2$center_x9, 
                      data_2$center_x0)

data_c2$center_means <- rowMeans(data_c2)

data_3 <- data.frame(read.csv("0900.csv"))

data_3$center_x1 <- scale(data_3$X1)
data_3$center_x2 <- scale(data_3$X2)
data_3$center_x3 <- scale(data_3$X3)
data_3$center_x4 <- scale(data_3$X4)
data_3$center_x5 <- scale(data_3$X5)
data_3$center_x6 <- scale(data_3$X6)
data_3$center_x7 <- scale(data_3$X7)
data_3$center_x8 <- scale(data_3$X8)
data_3$center_x9 <- scale(data_3$X9)
data_3$center_x0 <- scale(data_3$X10)

data_c3 <- data.frame(data_3$center_x1, data_3$center_x2, data_3$center_x3, data_3$center_x4, 
                     data_3$center_x5, data_3$center_x6, data_3$center_x7, data_3$center_x8, 
                     data_3$center_x9, data_3$center_x0)

data_c3$center_means <- rowMeans(data_c3)

data_4 <- data.frame(read.csv("0904.csv"))

data_4$center_x1 <- scale(data_4$X1)
data_4$center_x2 <- scale(data_4$X2)
data_4$center_x3 <- scale(data_4$X3)
data_4$center_x4 <- scale(data_4$X4)
data_4$center_x5 <- scale(data_4$X5)
data_4$center_x6 <- scale(data_4$X6)
data_4$center_x7 <- scale(data_4$X7)
data_4$center_x8 <- scale(data_4$X8)
data_4$center_x9 <- scale(data_4$X9)
data_4$center_x0 <- scale(data_4$X10)

data_c4 <- data.frame(data_4$center_x1, data_4$center_x2, data_4$center_x3, data_4$center_x4, 
                      data_4$center_x5, data_4$center_x6, data_4$center_x7, data_4$center_x8, 
                      data_4$center_x9, data_4$center_x0)

data_c4$center_means <- rowMeans(data_c4)





plot.ts(data_c$center_means, ylim = c(-2,2), lwd = 1, main = "Rewiring probability .1, Satisficing radius .0", 
        xlab = "Ticks", ylab = "Scaled BMI", col = "red")
lines(rollmean(data_c$center_means, 5), lwd = 2)
abline(h = c(0, 1, -1), v = c(100), lwd = 0.5)
plot.ts(data_c2$center_means, ylim = c(-2,2), lwd = 1, main = "Rewiring probability .1, Satisficing radius .4", 
      xlab = "Ticks", ylab = "Scaled BMI", col = "red")
lines(rollmean(data_c2$center_means, 5), lwd = 2)
abline(h = c(0, 1, -1), v = c(100), lwd = 0.5)
plot.ts(data_c3$center_means, ylim = c(-2,2), lwd = 1, main = "Rewiring probability .9, Satisficing radius .0", 
      xlab = "Ticks", ylab = "Scaled BMI", col = "red")
lines(rollmean(data_c3$center_means, 5), lwd = 2)
abline(h = c(0, 1, -1), v = c(100), lwd = 0.5)
plot.ts(data_c4$center_means, ylim = c(-2,2), lwd = 1, main = "Rewiring probability .9, Satisficing radius .4", 
      xlab = "Ticks", ylab = "Scaled BMI", col = "red")
lines(rollmean(data_c4$center_means, 5), lwd = 2)
abline(h = c(0, 1, -1), v = c(100), lwd = 0.5)