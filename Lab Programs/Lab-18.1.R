# Question 1: Stacked Area Chart

library(ggplot2)

student <- read.csv(file.choose())

# Convert data to long format
student_long <- data.frame(
  Student_ID = rep(student$Student_ID, 2),
  Score_Type = c(
    rep("Test Score", nrow(student)),
    rep("Participation Score", nrow(student))
  ),
  Score = c(
    student$Test_Score,
    student$Participation_Score
  )
)

# Stacked area chart
p <- ggplot(student_long,
            aes(x = Student_ID,
                y = Score,
                fill = Score_Type,
                group = Score_Type)) +
  geom_area() +
  labs(
    title = "Test and Participation Scores Across Students",
    x = "Student ID",
    y = "Score",
    fill = "Score Type"
  ) +
  theme_minimal()

print(p)
