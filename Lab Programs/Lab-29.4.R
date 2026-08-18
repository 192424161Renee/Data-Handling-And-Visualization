# Scatter Plot
plot(water_data$pH_Level,
     water_data$Turbidity,
     main = "pH Level vs Turbidity",
     xlab = "pH Level",
     ylab = "Turbidity",
     pch = 19,
     col = "blue")

# Add Sample ID labels
text(water_data$pH_Level,
     water_data$Turbidity,
     labels = water_data$Sample_ID,
     pos = 3)
