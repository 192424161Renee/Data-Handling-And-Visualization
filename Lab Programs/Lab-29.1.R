# Water Samples Dataset
water_data <- data.frame(
  Sample_ID = c(1, 2, 3, 4, 5),
  pH_Level = c(7.2, 6.8, 7.5, 6.5, 7.1),
  Turbidity = c(3, 5, 2, 7, 4),
  Quality = c("Good", "Fair", "Good", "Poor", "Fair")
)

# Histogram of pH Levels
hist(water_data$pH_Level,
     main = "Histogram of pH Levels",
     xlab = "pH Level",
     ylab = "Number of Samples",
     col = "skyblue",
     border = "black",
     breaks = 5)
