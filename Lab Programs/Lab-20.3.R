# SET 20 - Question 3
# Waiting Time by Patient

library(ggplot2)

hospital <- read.csv(file.choose())

p <- ggplot(
  hospital,
  aes(
    x = factor(Patient_ID),
    y = Waiting_Time_Days
  )
) +
  geom_col(
    fill = "steelblue",
    width = 0.6
  ) +
  geom_text(
    aes(label = Waiting_Time_Days),
    vjust = -0.5,
    size = 5
  ) +
  labs(
    title = "Waiting Time by Patient",
    x = "Patient ID",
    y = "Waiting Time (Days)"
  ) +
  theme_minimal()

print(p)
