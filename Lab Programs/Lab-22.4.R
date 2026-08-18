# Scatter Plot
plot(library_data$Days_Kept,
     library_data$Fine_Amount,
     main = "Days Kept vs Fine Amount",
     xlab = "Days Kept",
     ylab = "Fine Amount",
     pch = 19,
     col = "blue")

# Add User ID labels
text(library_data$Days_Kept,
     library_data$Fine_Amount,
     labels = library_data$User_ID,
     pos = 3)
