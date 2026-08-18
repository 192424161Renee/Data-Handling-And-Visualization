# Count movies by genre
genre_count <- table(movie_data$Genre)

# Pie Chart
pie(genre_count,
    main = "Movie Genre Distribution",
    col = c("orange", "lightblue", "lightgreen"),
    labels = paste(names(genre_count), genre_count))
