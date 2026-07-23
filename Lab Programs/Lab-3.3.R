library(ggplot2)

# Employee Performance Data
employee <- data.frame(
  EmployeeID = c(1,2,3,4,5),
  Department = c("Sales","HR","Marketing","Sales","HR"),
  YearsService = c(5,3,7,4,2),
  Performance = c(85,92,78,90,76)
)

# Scatter Plot
ggplot(employee, aes(x = YearsService, y = Performance)) +
  geom_point(size = 4, color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(
    title = "Years of Service vs Performance Score",
    x = "Years of Service",
    y = "Performance Score"
  ) +
  theme_minimal()

# Correlation
cor(employee$YearsService, employee$Performance)