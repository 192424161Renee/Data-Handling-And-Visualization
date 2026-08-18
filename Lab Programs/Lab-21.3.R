# Calculate average rating by genre
avg_rating <- aggregate(Rating ~ Genre,
                        data = movie_data,
                        FUN = mean)

# Bar Chart
barplot(avg_rating$Rating,
        names.arg = avg_rating$Genre,
        main = "Average Rating by Genre",
        xlab = "Genre",
        ylab = "Average Rating",
        col = "lightgreen",
        ylim = c(0, 5))
