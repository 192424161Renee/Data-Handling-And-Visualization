library(ggplot2)

# Product Inventory Data
inventory <- data.frame(
  ProductID = c(1,2,3,4,5),
  ProductName = c("Product A","Product B","Product C","Product D","Product E"),
  Quantity = c(250,175,300,200,220)
)

# Bar Chart
ggplot(inventory, aes(x = ProductName, y = Quantity, fill = ProductName)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Product Inventory Quantity",
    x = "Product Name",
    y = "Quantity Available"
  ) +
  theme_minimal()