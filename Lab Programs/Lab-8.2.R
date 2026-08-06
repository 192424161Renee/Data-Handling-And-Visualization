# Import Dataset
data <- read.csv(file.choose())

# Boxplot
boxplot(Quiz_Score ~ Course,
        data = data,
        main = "Quiz Score by Course",
        xlab = "Course",
        ylab = "Quiz Score",
        col = c("orange", "lightgreen", "lightblue"))
