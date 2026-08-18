# Count satisfaction levels
satisfaction_count <- table(airline_data$Satisfaction)

# Pie Chart
pie(satisfaction_count,
    main = "Passenger Satisfaction Levels",
    col = c("lightgreen", "orange", "lightcoral"),
    labels = paste(names(satisfaction_count), satisfaction_count))
