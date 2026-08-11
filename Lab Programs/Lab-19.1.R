# SET 19 - Question 1
# Histogram and Density Plot for Screen Time

library(ggplot2)

# Import dataset
mobile <- read.csv(file.choose())

# Histogram with density curve
p <- ggplot(mobile, aes(x = Screen_Time..hrs.)) +
  geom_histogram(
    aes(y = after_stat(density)),
    bins = 6,
    fill = "skyblue",
    color = "black",
    alpha = 0.7
  ) +
  geom_density(
    color = "red",
    linewidth = 1.2
  ) +
  labs(
    title = "Distribution of Screen Time",
    x = "Screen Time (hours)",
    y = "Density"
  ) +
  theme_minimal()

print(p)
