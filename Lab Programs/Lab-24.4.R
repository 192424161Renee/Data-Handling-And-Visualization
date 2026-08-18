# Scatter Plot
plot(hotel_data$Guests,
     hotel_data$Stay_Nights,
     main = "Guests vs Stay Nights",
     xlab = "Number of Guests",
     ylab = "Stay Nights",
     pch = 19,
     col = "blue")

# Add Booking ID labels
text(hotel_data$Guests,
     hotel_data$Stay_Nights,
     labels = hotel_data$Booking_ID,
     pos = 3)
