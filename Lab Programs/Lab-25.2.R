# Create Activity Level Categories
fitness_data$Activity_Level <- cut(
  fitness_data$Active_Minutes,
  breaks = c(-Inf, 44, 59, Inf),
  labels = c("Low", "Moderate", "High")
)

# Count Activity Levels
activity_count <- table(fitness_data$Activity_Level)

# Pie Chart
pie(activity_count,
    main = "Activity Level Categories",
    col = c("lightcoral", "orange", "lightgreen"),
    labels = paste(names(activity_count), activity_count))
