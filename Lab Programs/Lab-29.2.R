# Count quality categories
quality_count <- table(water_data$Quality)

# Pie Chart
pie(quality_count,
    main = "Water Quality Categories",
    col = c("lightgreen", "orange", "lightcoral"),
    labels = paste(names(quality_count), quality_count))
