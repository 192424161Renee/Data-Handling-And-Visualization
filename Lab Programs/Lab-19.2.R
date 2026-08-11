# SET 19 - Question 2
# Data Used vs Screen Time

library(ggplot2)

# Import dataset
mobile <- read.csv(file.choose())

# Calculate correlation
correlation <- cor(
  mobile$Data_Used..GB.,
  mobile$Screen_Time..hrs.
)

print(paste("Correlation:", round(correlation, 3)))

# Scatter plot with trend line
p <- ggplot(
  mobile,
  aes(
    x = Data_Used..GB.,
    y = Screen_Time..hrs.
  )
) +
  geom_point(
    size = 4,
    color = "blue"
  ) +
  geom_smooth(
    method = "lm",
    se = FALSE,
    color = "red"
  ) +
  labs(
    title = "Data Used vs Screen Time",
    x = "Data Used (GB)",
    y = "Screen Time (hours)"
  ) +
  theme_minimal()

print(p)