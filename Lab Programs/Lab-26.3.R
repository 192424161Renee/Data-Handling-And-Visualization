# Bar Chart
barplot(restaurant_data$Items_Ordered,
        names.arg = paste("Order", restaurant_data$Order_ID),
        main = "Items Ordered by Order",
        xlab = "Order",
        ylab = "Items Ordered",
        col = "lightgreen")
