# SET 20 - Question 4
# Age vs Waiting Time

library(ggplot2)

hospital <- read.csv(file.choose())

p <- ggplot(
  hospital,
  aes(
    x = Age,
    y = Waiting_Time_Days,
    color = Appointment_Status
  )
) +
  geom_point(
    size = 5
  ) +
  geom_smooth(
    method = "lm",
    se = FALSE,
    color = "black"
  ) +
  labs(
    title = "Age vs Waiting Time",
    x = "Patient Age",
    y = "Waiting Time (Days)",
    color = "Appointment Status"
  ) +
  theme_minimal()

print(p)
