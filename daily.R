daily <- tapply(data$steps, data$date, sum, na.rm = T)
hist(daily, xlab = "Number of steps per day", main = "Histogram of daily steps")
daily_mean <- mean(daily)
daily_median <- median(daily)