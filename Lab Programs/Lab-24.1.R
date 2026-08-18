# Hotel Booking Dataset
hotel_data <- data.frame(
  Booking_ID = c(1, 2, 3, 4, 5),
  Stay_Nights = c(2, 5, 3, 7, 4),
  Guests = c(2, 4, 1, 3, 2),
  Room_Type = c("Standard", "Deluxe", "Standard", "Suite", "Deluxe")
)

# Histogram of Stay Nights
hist(hotel_data$Stay_Nights,
     main = "Histogram of Stay Nights",
     xlab = "Stay Nights",
     ylab = "Number of Bookings",
     col = "skyblue",
     border = "black",
     breaks = 5)
