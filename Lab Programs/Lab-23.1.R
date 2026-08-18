# Airline Passenger Dataset
airline_data <- data.frame(
  Passenger_ID = c(1, 2, 3, 4, 5),
  Age = c(28, 45, 33, 52, 39),
  Flight_Hours = c(2, 8, 5, 10, 6),
  Satisfaction = c("High", "Medium", "High", "Low", "Medium")
)

# Histogram of Passenger Ages
hist(airline_data$Age,
     main = "Histogram of Passenger Ages",
     xlab = "Age",
     ylab = "Number of Passengers",
     col = "skyblue",
     border = "black",
     breaks = 5)
