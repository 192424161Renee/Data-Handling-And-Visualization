# Scatter Plot
plot(movie_data$Duration,
     movie_data$Rating,
     main = "Movie Duration vs Rating",
     xlab = "Duration (Minutes)",
     ylab = "Rating",
     pch = 19,
     col = "blue")

# Add movie labels
text(movie_data$Duration,
     movie_data$Rating,
     labels = movie_data$Movie_ID,
     pos = 3)
