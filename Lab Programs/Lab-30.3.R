# Create Dataset
music_data <- data.frame(
  Song_ID = c(1, 2, 3, 4, 5),
  Duration = c(3.5, 4.2, 3.8, 5.0, 4.1),
  Streams = c(150, 200, 180, 250, 170),
  Genre = c("Pop", "Rock", "Pop", "Hip-Hop", "Rock")
)

# Calculate average streams
avg_streams <- aggregate(Streams ~ Genre,
                         data = music_data,
                         FUN = mean)

# Bar Chart
barplot(avg_streams$Streams,
        names.arg = avg_streams$Genre,
        main = "Average Streams by Genre",
        xlab = "Genre",
        ylab = "Average Streams (000s)",
        col = "lightgreen")
