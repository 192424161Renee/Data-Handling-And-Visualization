# Create Dataset
music_data <- data.frame(
  Song_ID = c(1, 2, 3, 4, 5),
  Duration = c(3.5, 4.2, 3.8, 5.0, 4.1),
  Streams = c(150, 200, 180, 250, 170),
  Genre = c("Pop", "Rock", "Pop", "Hip-Hop", "Rock")
)

# Histogram
hist(music_data$Duration,
     main = "Histogram of Song Durations",
     xlab = "Duration (Minutes)",
     ylab = "Number of Songs",
     col = "skyblue",
     border = "black")
