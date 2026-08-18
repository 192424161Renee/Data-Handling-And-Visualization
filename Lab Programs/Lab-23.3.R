# Bar Chart
barplot(airline_data$Flight_Hours,
        names.arg = paste("Passenger", airline_data$Passenger_ID),
        main = "Flight Hours by Passenger",
        xlab = "Passenger",
        ylab = "Flight Hours",
        col = "lightblue")
