# Bar Chart
barplot(hotel_data$Guests,
        names.arg = paste("Booking", hotel_data$Booking_ID),
        main = "Guests per Booking",
        xlab = "Booking",
        ylab = "Number of Guests",
        col = "lightgreen")
