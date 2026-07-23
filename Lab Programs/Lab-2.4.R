library(wordcloud)
library(RColorBrewer)

# Customer Feedback
feedback <- c(
  "Excellent service and friendly staff",
  "Very satisfied with the product",
  "Good quality and quick delivery",
  "Excellent customer support",
  "Happy with the overall experience"
)

# Create Text
text <- paste(feedback, collapse = " ")

# Generate Word Cloud
wordcloud(
  words = strsplit(text, " ")[[1]],
  freq = table(strsplit(text, " ")[[1]]),
  min.freq = 1,
  random.order = FALSE,
  colors = brewer.pal(8, "Dark2")
)
