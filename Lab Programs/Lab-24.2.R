# Count room types
room_count <- table(hotel_data$Room_Type)

# Pie Chart
pie(room_count,
    main = "Hotel Room Type Distribution",
    col = c("lightblue", "orange", "lightgreen"),
    labels = paste(names(room_count), room_count))
