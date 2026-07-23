library(ggplot2)

# Product Inventory Data
inventory <- data.frame(
  ProductName = c("Product A","Product B","Product C","Product D","Product E"),
  Price = c(500,350,650,450,400),
  Quantity = c(250,175,300,200,220)
)

# Scatter Plot
ggplot(inventory,
       aes(x = Price, y = Quantity)) +
  geom_point(size = 4, color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(
    title = "Product Price vs Quantity Available",
    x = "Product Price",
    y = "Quantity Available"
  ) +
  theme_minimal()

# Correlation
cor(inventory$Price, inventory$Quantity)