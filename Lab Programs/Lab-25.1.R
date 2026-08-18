# Fitness Tracker Dataset
fitness_data <- data.frame(
  User_ID = c(1, 2, 3, 4, 5),
  Steps = c(7000, 10000, 8500, 12000, 6500),
  Calories_Burned = c(250, 400, 320, 500, 220),
  Active_Minutes = c(40, 60, 50, 75, 35)
)

# Histogram of Daily Steps
hist(fitness_data$Steps,
     main = "Histogram of Daily Steps",
     xlab = "Daily Steps",
     ylab = "Number of Users",
     col = "skyblue",
     border = "black",
     breaks = 5)
