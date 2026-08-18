# Movie Ratings Dataset
movie_data <- data.frame(
  Movie_ID = c(1, 2, 3, 4, 5),
  Genre = c("Action", "Comedy", "Drama", "Action", "Comedy"),
  Rating = c(4.5, 3.8, 4.2, 4.7, 3.5),
  Duration = c(120, 90, 140, 130, 95)
)

# Histogram of Movie Ratings
hist(movie_data$Rating,
     main = "Histogram of Movie Ratings",
     xlab = "Rating",
     ylab = "Number of Movies",
     col = "skyblue",
     border = "black",
     breaks = 5)
