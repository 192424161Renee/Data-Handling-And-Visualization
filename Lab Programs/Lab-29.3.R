# Bar Chart
barplot(water_data$Turbidity,
        names.arg = paste("Sample", water_data$Sample_ID),
        main = "Turbidity by Sample",
        xlab = "Sample",
        ylab = "Turbidity",
        col = "lightblue")
