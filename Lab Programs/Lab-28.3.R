# Bar Chart
barplot(social_data$Comments,
        names.arg = paste("Post", social_data$Post_ID),
        main = "Comments by Post",
        xlab = "Post",
        ylab = "Number of Comments",
        col = "lightgreen")
