# Scatter Plot
plot(fitness_data$Steps,
     fitness_data$Calories_Burned,
     main = "Steps vs Calories Burned",
     xlab = "Daily Steps",
     ylab = "Calories Burned",
     pch = 19,
     col = "blue")

# Add User ID labels
text(fitness_data$Steps,
     fitness_data$Calories_Burned,
     labels = fitness_data$User_ID,
     pos = 3)
