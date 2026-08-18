# Count plant status
status_count <- table(plant_data$Status)

# Pie Chart
pie(status_count,
    main = "Plant Status Distribution",
    col = c("lightgreen", "orange"),
    labels = paste(names(status_count), status_count))
