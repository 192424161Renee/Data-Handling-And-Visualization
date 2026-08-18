# Restaurant Orders Dataset
restaurant_data <- data.frame(
  Order_ID = c(1, 2, 3, 4, 5),
  Items_Ordered = c(2, 5, 3, 4, 2),
  Bill_Amount = c(25, 60, 35, 50, 20),
  Dining_Type = c("Dine-In", "Takeaway", "Dine-In", "Delivery", "Takeaway")
)

# Histogram
hist(restaurant_data$Bill_Amount,
     main = "Histogram of Bill Amounts",
     xlab = "Bill Amount",
     ylab = "Number of Orders",
     col = "skyblue",
     border = "black",
     breaks = 5)
