library(ggplot2)

# User Interaction Data
interaction <- data.frame(
  Date = rep(as.Date(c("2023-01-01","2023-01-02","2023-01-03",
                       "2023-01-04","2023-01-05")), 3),
  Type = rep(c("Likes","Shares","Comments"), each = 5),
  Count = c(
    120,130,110,140,150,
    60,70,55,80,90,
    30,35,25,40,45
  )
)

# Stacked Area Chart
ggplot(interaction,
       aes(x = Date, y = Count, fill = Type)) +
  geom_area() +
  labs(
    title = "Website User Interactions",
    x = "Date",
    y = "Interaction Count"
  ) +
  theme_minimal()