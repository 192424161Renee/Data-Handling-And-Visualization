# Scatter Plot
plot(social_data$Likes,
     social_data$Shares,
     main = "Likes vs Shares",
     xlab = "Likes",
     ylab = "Shares",
     pch = 19,
     col = "blue")

# Add Post ID labels
text(social_data$Likes,
     social_data$Shares,
     labels = social_data$Post_ID,
     pos = 3)
