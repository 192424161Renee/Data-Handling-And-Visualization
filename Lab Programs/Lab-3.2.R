library(ggplot2)

# Employee Performance Data
employee <- data.frame(
  EmployeeID = c(1,2,3,4,5),
  Department = c("Sales","HR","Marketing","Sales","HR"),
  YearsService = c(5,3,7,4,2),
  Performance = c(85,92,78,90,76)
)

# Bar Chart
ggplot(employee, aes(x = Department, fill = Department)) +
  geom_bar() +
  labs(
    title = "Employees by Department",
    x = "Department",
    y = "Number of Employees"
  ) +
  theme_minimal()