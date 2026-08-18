# Calculate total engagement
total_likes <- sum(social_data$Likes)
total_comments <- sum(social_data$Comments)
total_shares <- sum(social_data$Shares)

# Create engagement vector
engagement <- c(
  Likes = total_likes,
  Comments = total_comments,
  Shares = total_shares
)

# Pie Chart
pie(engagement,
    main = "Total Engagement Components",
    col = c("skyblue", "orange", "lightgreen"),
    labels = paste(names(engagement), engagement))
