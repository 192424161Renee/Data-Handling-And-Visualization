# Import dataset
data <- read.csv("Student_Mini_Data.csv")

# Assign colors based on Gender
colors <- ifelse(data$Gender=="Male","blue","red")

# Scatter Plot
plot(data$Study_Hours,
     data$Math_Score,
     col=colors,
     pch=19,
     xlab="Study Hours",
     ylab="Math Score",
     main="Study Hours vs Math Score")

# Regression Line
abline(lm(Math_Score ~ Study_Hours, data=data),
       col="darkgreen",
       lwd=2)

# Legend
legend("topleft",
       legend=c("Male","Female"),
       col=c("blue","red"),
       pch=19)
