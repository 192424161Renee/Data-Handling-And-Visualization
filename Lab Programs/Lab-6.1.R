library(ggplot2)

sales <- data.frame(
  Product = rep(c("Product A","Product B","Product C"), each = 3),
  Month = rep(c("January","February","March"), 3),
  Sales = c(2000,2200,2400,
            1500,1800,1600,
            1200,1400,1100)
)

ggplot(sales, aes(x = Product, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Monthly Product Sales (First Quarter)",
    x = "Product",
    y = "Sales"
  ) +
  theme_minimal()