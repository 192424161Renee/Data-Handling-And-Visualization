library(ggplot2)

# Product Inventory Data
inventory <- data.frame(
  ProductName = c("Product A","Product B","Product C","Product D","Product E"),
  Category = c("Electronics","Electronics","Furniture","Furniture","Stationery"),
  Quantity = c(250,175,300,200,220)
)

# Stacked Bar Chart
ggplot(inventory,
       aes(x = Category, y = Quantity, fill = ProductName)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Inventory Quantity by Product Category",
    x = "Category",
    y = "Quantity Available"
  ) +
  theme_minimal()