library(ggplot2)

# Customer Data
customer <- data.frame(
  Age = c(25,30,35,28,40),
  Satisfaction = factor(c(4,5,3,4,5))
)

# Create Age Groups
customer$AgeGroup <- cut(
  customer$Age,
  breaks = c(20,30,40,50),
  labels = c("21-30","31-40","41-50"),
  include.lowest = TRUE
)

# Stacked Bar Chart
ggplot(customer, aes(x = AgeGroup, fill = Satisfaction)) +
  geom_bar() +
  labs(
    title = "Customer Satisfaction by Age Group",
    x = "Age Group",
    y = "Number of Customers"
  ) +
  theme_minimal()