# Create Dataset
music_data <- data.frame(
  Song_ID = c(1, 2, 3, 4, 5),
  Duration = c(3.5, 4.2, 3.8, 5.0, 4.1),
  Streams = c(150, 200, 180, 250, 170),
  Genre = c("Pop", "Rock", "Pop", "Hip-Hop", "Rock")
)

# Scatter Plot
plot(music_data$Duration,
     music_data$Streams,
     main = "Duration vs Streams",
     xlab = "Duration (Minutes)",
     ylab = "Streams (000s)",
     pch = 19,
     col = "blue")

# Add Song ID labels
text(music_data$Duration,
     music_data$Streams,
     labels = music_data$Song_ID,
     pos = 3)
