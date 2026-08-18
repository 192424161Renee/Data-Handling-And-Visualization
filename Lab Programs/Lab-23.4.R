# Scatter Plot
plot(airline_data$Age,
     airline_data$Flight_Hours,
     main = "Age vs Flight Hours",
     xlab = "Age",
     ylab = "Flight Hours",
     pch = 19,
     col = "blue")

# Add Passenger ID labels
text(airline_data$Age,
     airline_data$Flight_Hours,
     labels = airline_data$Passenger_ID,
     pos = 3)
