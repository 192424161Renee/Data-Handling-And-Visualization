# Question 3: Density Plot

library(ggplot2)

student <- read.csv(file.choose())

p <- ggplot(student,
            aes(x = Test_Score)) +
  geom_density(
    fill = "skyblue",
    alpha = 0.6
  ) +
  geom_rug(size = 1) +
  labs(
    title = "Density Distribution of Test Scores",
    x = "Test Score",
    y = "Density"
  ) +
  theme_minimal()

print(p)
