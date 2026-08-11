# SET 20 - Question 1
# Histogram of Patient Ages

library(ggplot2)

hospital <- read.csv(file.choose())

p <- ggplot(hospital, aes(x = Age)) +
  geom_histogram(
    bins = 5,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Distribution of Patient Ages",
    x = "Patient Age",
    y = "Number of Patients"
  ) +
  theme_minimal()

print(p)
