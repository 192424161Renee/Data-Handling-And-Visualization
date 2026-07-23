library(ggplot2)

# Employee Performance Data
employee <- data.frame(
  EmployeeID = c(1,2,3,4,5),
  Department = c("Sales","HR","Marketing","Sales","HR"),
  YearsService = c(5,3,7,4,2),
  Performance = c(85,92,78,90,76)
)

# Line Chart
ggplot(employee, aes(x = EmployeeID, y = Performance,
                     color = Department, group = Department)) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 3) +
  labs(
    title = "Employee Performance Trend",
    x = "Employee ID",
    y = "Performance Score",
    color = "Department"
  ) +
  theme_minimal()