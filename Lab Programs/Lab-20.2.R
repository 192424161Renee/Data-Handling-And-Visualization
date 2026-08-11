# SET 20 - Question 2
# Pie Chart of Appointment Status

library(ggplot2)

hospital <- read.csv(file.choose())

status_data <- as.data.frame(
  table(hospital$Appointment_Status)
)

colnames(status_data) <- c(
  "Appointment_Status",
  "Count"
)

status_data$Percentage <- round(
  status_data$Count / sum(status_data$Count) * 100,
  1
)

p <- ggplot(
  status_data,
  aes(
    x = "",
    y = Count,
    fill = Appointment_Status
  )
) +
  geom_bar(
    stat = "identity",
    width = 1
  ) +
  coord_polar("y") +
  geom_text(
    aes(
      label = paste0(
        Count,
        " (",
        Percentage,
        "%)"
      )
    ),
    position = position_stack(vjust = 0.5)
  ) +
  labs(
    title = "Appointment Status Distribution",
    fill = "Appointment Status"
  ) +
  theme_void()

print(p)
