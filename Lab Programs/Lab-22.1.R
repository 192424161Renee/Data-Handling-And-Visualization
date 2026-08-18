# Library Usage Dataset
library_data <- data.frame(
  User_ID = c(1, 2, 3, 4, 5),
  Books_Borrowed = c(2, 5, 3, 6, 1),
  Days_Kept = c(10, 25, 14, 30, 7),
  Fine_Amount = c(0, 15, 0, 20, 0)
)

# Histogram
hist(library_data$Books_Borrowed,
     main = "Histogram of Books Borrowed",
     xlab = "Books Borrowed",
     ylab = "Number of Users",
     col = "skyblue",
     border = "black",
     breaks = 5)
