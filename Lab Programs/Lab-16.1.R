# Select the CSV file
data <- read.csv(file.choose(), header = TRUE)

# Display the dataset
print(data)

# Scatterplot Matrix
pairs(data[, c("Age", "BMI", "BP", "Cholesterol")],
      main = "Scatterplot Matrix of Health Indicators",
      col = "blue",
      pch = 19)
