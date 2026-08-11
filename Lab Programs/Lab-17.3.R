# Question 3: Correlation Heatmap

library(ggplot2)

# Select and import CSV file
vehicle <- read.csv(file.choose())

# Select numerical variables
numeric_data <- vehicle[, c(
  "Engine_Size",
  "Horsepower",
  "Fuel_Efficiency",
  "Top_Speed",
  "Safety_Rating"
)]

# Calculate correlation matrix
cor_matrix <- cor(numeric_data)

# Display correlation values in Console
print(round(cor_matrix, 2))

# Create heatmap data without requiring reshape2
cor_data <- expand.grid(
  Variable1 = colnames(cor_matrix),
  Variable2 = colnames(cor_matrix)
)

cor_data$Correlation <- as.vector(cor_matrix)

# Create heatmap
p <- ggplot(cor_data,
            aes(x = Variable1,
                y = Variable2,
                fill = Correlation)) +
  geom_tile() +
  geom_text(aes(label = round(Correlation, 2)),
            size = 5) +
  labs(
    title = "Correlation Heatmap of Vehicle Performance",
    x = "Variables",
    y = "Variables",
    fill = "Correlation"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45,
                               hjust = 1)
  )

# Display graph
print(p)
