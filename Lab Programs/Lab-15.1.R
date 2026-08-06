# Select the CSV file manually
data <- read.csv(file.choose(), stringsAsFactors = FALSE)

# Display dataset
print(data)

# Show two graphs on one page
par(mfrow = c(1,2))

# Histogram of Math Score
hist(data$Math_Score,
     col = "skyblue",
     main = "Histogram of Math Scores",
     xlab = "Math Score",
     ylab = "Frequency")

# Boxplot of Science Score by Gender
boxplot(Science_Score ~ Gender,
        data = data,
        col = c("lightgreen","pink"),
        main = "Science Score by Gender",
        xlab = "Gender",
        ylab = "Science Score")

# Reset layout
par(mfrow = c(1,1))
