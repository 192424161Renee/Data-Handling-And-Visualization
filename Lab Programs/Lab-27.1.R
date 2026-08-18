# Power Plant Operations Dataset
plant_data <- data.frame(
  Plant_ID = c(1, 2, 3, 4, 5),
  Output_MW = c(120, 150, 100, 170, 110),
  Temperature = c(65, 70, 60, 75, 62),
  Status = c("Active", "Active", "Maintenance", "Active", "Maintenance")
)

# Histogram of Power Output
hist(plant_data$Output_MW,
     main = "Histogram of Power Output",
     xlab = "Power Output (MW)",
     ylab = "Number of Plants",
     col = "skyblue",
     border = "black",
     breaks = 5)
