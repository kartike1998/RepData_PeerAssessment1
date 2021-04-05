mean_int <- tapply(data$steps, data$interval, mean, na.rm = T)
plot(names(mean_int), mean_int, type = "l", main = "Time series plot of number of steps",
     xlab = "5-minute interval", ylab = "Average number of steps")
max_int <- as.integer(names(which.max(mean_int)))