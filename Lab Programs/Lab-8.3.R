# Import Dataset
data <- read.csv(file.choose())

# Rename Study_Time column
names(data)[names(data)=="Study_Time.hrs."] <- "Study_Time"

# Bubble Scatter Plot
symbols(data$Study_Time,
        data$Quiz_Score,
        circles = data$Videos_Watched/5,
        inches = 0.3,
        bg = rgb(0, 0, 1, 0.5),
        fg = "black",
        xlab = "Study Time (Hours)",
        ylab = "Quiz Score",
        main = "Study Time vs Quiz Score")
