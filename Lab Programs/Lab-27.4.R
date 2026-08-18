# Scatter Plot
plot(plant_data$Temperature,
     plant_data$Output_MW,
     main = "Power Output vs Temperature",
     xlab = "Temperature",
     ylab = "Power Output (MW)",
     pch = 19,
     col = "blue")

# Add Plant ID labels
text(plant_data$Temperature,
     plant_data$Output_MW,
     labels = plant_data$Plant_ID,
     pos = 3)
