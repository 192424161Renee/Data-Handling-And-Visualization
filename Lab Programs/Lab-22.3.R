# Bar Chart
barplot(library_data$Fine_Amount,
        names.arg = paste("User", library_data$User_ID),
        main = "Fine Amount by User",
        xlab = "User",
        ylab = "Fine Amount",
        col = "lightcoral")
