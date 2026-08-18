# Count dining types
dining_count <- table(restaurant_data$Dining_Type)

# Pie Chart
pie(dining_count,
    main = "Dining Type Distribution",
    col = c("lightblue", "orange", "lightgreen"),
    labels = paste(names(dining_count), dining_count))
