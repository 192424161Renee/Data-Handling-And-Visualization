# Create Dataset
music_data <- data.frame(
  Song_ID = c(1, 2, 3, 4, 5),
  Duration = c(3.5, 4.2, 3.8, 5.0, 4.1),
  Streams = c(150, 200, 180, 250, 170),
  Genre = c("Pop", "Rock", "Pop", "Hip-Hop", "Rock")
)

# Count genres
genre_count <- table(music_data$Genre)

# Pie Chart
pie(genre_count,
    main = "Genre Distribution",
    col = c("skyblue", "orange", "lightgreen"),
    labels = paste(names(genre_count), genre_count))
