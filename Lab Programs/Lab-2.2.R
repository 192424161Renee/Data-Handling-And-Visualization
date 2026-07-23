# Customer Data
customer <- data.frame(
  Satisfaction = c(4,5,3,4,5)
)

# Count Satisfaction Scores
score <- table(customer$Satisfaction)

# Pie Chart
pie(
  score,
  labels = paste(names(score), "(", score, ")", sep = ""),
  main = "Customer Satisfaction Scores",
  col = rainbow(length(score))
)