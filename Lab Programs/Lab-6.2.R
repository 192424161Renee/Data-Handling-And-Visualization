library(ggplot2)

sales <- data.frame(
  Month = factor(rep(c("January","February","March"),3),
                 levels=c("January","February","March")),
  Product = rep(c("Product A","Product B","Product C"), each=3),
  Sales = c(2000,2200,2400,
            1500,1800,1600,
            1200,1400,1100)
)

ggplot(sales,
       aes(x = Month, y = Sales,
           fill = Product,
           group = Product)) +
  geom_area() +
  labs(
    title="Overall Sales Trend",
    x="Month",
    y="Sales"
  ) +
  theme_minimal()