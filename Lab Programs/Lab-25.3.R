# Bar Chart
barplot(fitness_data$Calories_Burned,
        names.arg = paste("User", fitness_data$User_ID),
        main = "Calories Burned by User",
        xlab = "User",
        ylab = "Calories Burned",
        col = "lightgreen")
