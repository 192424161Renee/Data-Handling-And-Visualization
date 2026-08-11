# Question 2: Boxplot of Study Hours by Attendance Quartiles

library(ggplot2)

student <- read.csv(file.choose())

# Create attendance quartiles
student$Attendance_Quartile <- cut(
  student$Attendance,
  breaks = quantile(
    student$Attendance,
    probs = c(0, 0.25, 0.50, 0.75, 1),
    na.rm = TRUE
  ),
  include.lowest = TRUE,
  labels = c(
    "Q1 - Low Attendance",
    "Q2",
    "Q3",
    "Q4 - High Attendance"
  )
)

# Boxplot
p <- ggplot(student,
            aes(x = Attendance_Quartile,
                y = Study_Hours,
                fill = Attendance_Quartile)) +
  geom_boxplot() +
  geom_jitter(width = 0.08, size = 3) +
  labs(
    title = "Study Hours by Attendance Quartiles",
    x = "Attendance Quartile",
    y = "Study Hours"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 20, hjust = 1),
    legend.position = "none"
  )

print(p)
