# Select the CSV file
data <- read.csv(file.choose(), header = TRUE)

# Display two graphs in one page
par(mfrow = c(1,2))

# Q-Q Plot
qqnorm(data$Cholesterol,
       main = "Q-Q Plot of Cholesterol",
       col = "blue",
       pch = 19)
qqline(data$Cholesterol,
       col = "red",
       lwd = 2)

# ECDF
plot(ecdf(data$Cholesterol),
     main = "ECDF of Cholesterol",
     xlab = "Cholesterol",
     ylab = "Cumulative Probability",
     col = "darkgreen",
     lwd = 2)

# Reset plotting layout
par(mfrow = c(1,1))
