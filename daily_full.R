daily_full <- tapply(data_imp$steps, data_imp$date, sum, na.rm = T)
hist(daily_full, xlab = "Number of steps per day", 
     main = "Histogram of daily steps (imputed data)")
daily_mean_full <- mean(daily_full)
daily_median_full <- median(daily_full)