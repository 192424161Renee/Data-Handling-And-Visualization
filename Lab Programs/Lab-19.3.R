# SET 19 - Question 3
# Average Satisfaction by Gender

library(ggplot2)

# Import dataset
mobile <- read.csv(file.choose())

# Calculate average satisfaction
avg_satisfaction <- aggregate(
  Satisfaction ~ Gender,
  data = mobile,
  FUN = mean
)

# Display averages
print(avg_satisfaction)

# Bar chart
p <- ggplot(
  avg_satisfaction,
  aes(
    x = Gender,
    y = Satisfaction,
    fill = Gender
  )
) +
  geom_col(width = 0.6) +
  geom_text(
    aes(label = round(Satisfaction, 2)),
    vjust = -0.5,
    size = 5
  ) +
  labs(
    title = "Average Satisfaction Score by Gender",
    x = "Gender",
    y = "Average Satisfaction Score"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

print(p)
