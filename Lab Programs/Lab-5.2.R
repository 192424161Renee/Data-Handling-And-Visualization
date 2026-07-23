library(ggplot2)

# Website Traffic Data
traffic <- data.frame(
  Date = c("2023-01-01","2023-01-02","2023-01-03",
           "2023-01-04","2023-01-05"),
  CTR = c(2.3,2.7,2.0,2.4,2.6)
)

# Sort by CTR
traffic <- traffic[order(-traffic$CTR), ]

# Bar Chart
ggplot(traffic, aes(x = reorder(Date, CTR), y = CTR, fill = Date)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(
    title = "Top Days by Click-Through Rate",
    x = "Date",
    y = "Click-Through Rate (%)"
  ) +
  theme_minimal()