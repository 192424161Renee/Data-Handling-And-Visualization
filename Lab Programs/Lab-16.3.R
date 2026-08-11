# Select the CSV file
data <- read.csv(file.choose(), header = TRUE)

# Calculate averages
avg <- c(mean(data$Age),
         mean(data$BMI),
         mean(data$BP),
         mean(data$Cholesterol))

# Names of indicators
names(avg) <- c("Age", "BMI", "BP", "Cholesterol")

# Draw Bar Chart
barplot(avg,
        col = c("skyblue", "orange", "lightgreen", "pink"),
        main = "Average Health Indicators",
        xlab = "Health Indicators",
        ylab = "Average Value")
