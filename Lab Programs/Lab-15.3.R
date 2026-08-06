# Import dataset
data <- read.csv("Student_Mini_Data.csv")

# Convert Date
data$Exam_Date <- as.Date(data$Exam_Date)

# Extract Month
data$Month <- format(data$Exam_Date,"%Y-%m")

# Monthly Average
monthly_avg <- aggregate(Math_Score ~ Month,
                         data=data,
                         mean)

print(monthly_avg)

# Line Chart
plot(monthly_avg$Math_Score,
     type="o",
     col="blue",
     xaxt="n",
     xlab="Month",
     ylab="Average Math Score",
     main="Monthly Average Math Score")

axis(1,
     at=1:nrow(monthly_avg),
     labels=monthly_avg$Month)

# Moving Average
ma <- filter(monthly_avg$Math_Score,
             rep(1/2,2),
             sides=1)

lines(ma,
      col="red",
      lwd=2)

legend("topleft",
       legend=c("Average","Moving Average"),
       col=c("blue","red"),
       lwd=2)
