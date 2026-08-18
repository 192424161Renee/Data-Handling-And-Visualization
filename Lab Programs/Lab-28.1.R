# Social Media Posts Dataset
social_data <- data.frame(
  Post_ID = c(1, 2, 3, 4, 5),
  Likes = c(120, 200, 150, 300, 180),
  Comments = c(15, 30, 20, 40, 25),
  Shares = c(10, 20, 12, 35, 18)
)

# Histogram of Likes
hist(social_data$Likes,
     main = "Histogram of Likes",
     xlab = "Likes",
     ylab = "Number of Posts",
     col = "skyblue",
     border = "black",
     breaks = 5)
