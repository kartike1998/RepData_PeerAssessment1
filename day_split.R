library(plyr)
library(dplyr)
library(lattice)
data_imp$day <- weekdays(data_imp$date)
data_imp <- mutate(data_imp, day = recode(day, "Saturday" = "Weekend", "Sunday" = 
                                              "Weekend", .default = "Weekday"))
data_mean <- group_by(data_imp, interval, day) %>% summarise(avg_steps = mean(steps))
xyplot(data_mean$avg_steps ~ data_mean$interval | data_mean$day, layout = c(1, 2), 
       type = "l", xlab = "Interval", ylab = "Number of steps")