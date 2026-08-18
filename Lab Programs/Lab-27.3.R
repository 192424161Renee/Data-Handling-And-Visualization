# Bar Chart
barplot(plant_data$Temperature,
        names.arg = paste("Plant", plant_data$Plant_ID),
        main = "Temperature by Plant",
        xlab = "Plant",
        ylab = "Temperature",
        col = "lightcoral")
