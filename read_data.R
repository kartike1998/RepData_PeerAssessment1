data <- read.csv("activity.csv", header = T)
data[2] <- as.Date(data[[2]])