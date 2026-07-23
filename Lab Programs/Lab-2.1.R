library(ggplot2)

# Customer Data
customer <- data.frame(
  CustomerID = 1:5,
  Age = c(25,30,35,28,40),
  Satisfaction = c(4,5,3,4,5)
)

# Histogram
ggplot(customer, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(
    title = "Distribution of Customer Ages",
    x = "Age",
    y = "Frequency"
  ) +
  theme_minimal()