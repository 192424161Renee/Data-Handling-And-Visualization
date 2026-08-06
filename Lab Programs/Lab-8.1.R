# Import Dataset
data <- read.csv(file.choose())

# Histogram
hist(data$Quiz_Score,
     main = "Histogram of Quiz Scores",
     xlab = "Quiz Score",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")
