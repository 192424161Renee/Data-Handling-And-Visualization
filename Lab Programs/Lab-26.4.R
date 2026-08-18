# Scatter Plot
plot(restaurant_data$Items_Ordered,
     restaurant_data$Bill_Amount,
     main = "Items Ordered vs Bill Amount",
     xlab = "Items Ordered",
     ylab = "Bill Amount",
     pch = 19,
     col = "blue")

# Add Order ID labels
text(restaurant_data$Items_Ordered,
     restaurant_data$Bill_Amount,
     labels = restaurant_data$Order_ID,
     pos = 3)
