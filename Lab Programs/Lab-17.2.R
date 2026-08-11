library(ggplot2)

vehicle <- read.csv(file.choose())

p <- ggplot(vehicle,
            aes(x = Horsepower,
                y = Top_Speed,
                color = as.factor(Engine_Size))) +
  geom_point(size = 5) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Horsepower vs Top Speed",
    x = "Horsepower",
    y = "Top Speed (km/h)",
    color = "Engine Size (L)"
  ) +
  theme_minimal()

print(p)
