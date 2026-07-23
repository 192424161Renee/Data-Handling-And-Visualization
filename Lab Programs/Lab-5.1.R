library(ggplot2)

# Website Traffic Data
traffic <- data.frame(
  Date = as.Date(c("2023-01-01","2023-01-02","2023-01-03",
                   "2023-01-04","2023-01-05")),
  PageViews = c(1500,1600,1400,1650,1800)
)

# Line Chart
ggplot(traffic, aes(x = Date, y = PageViews, group = 1)) +
  geom_line(color = "blue", linewidth = 1.2) +
  geom_point(color = "red", size = 3) +
  labs(
    title = "Daily Website Page Views",
    x = "Date",
    y = "Page Views"
  ) +
  theme_minimal()