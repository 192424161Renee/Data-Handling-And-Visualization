# Install ggplot2 (Run only once)
if (!require(ggplot2)) {
  install.packages("ggplot2")
  library(ggplot2)
} else {
  library(ggplot2)
}

# Select the CSV file
data <- read.csv(file.choose(), header = TRUE)

# Display the dataset
print(data)

# Convert Safety_Rating to a factor
data$Safety_Rating <- as.factor(data$Safety_Rating)

# Create the violin plot
p <- ggplot(data,
            aes(x = Safety_Rating,
                y = Fuel_Efficiency,
                fill = Safety_Rating)) +
  geom_violin(trim = FALSE) +
  geom_boxplot(width = 0.1, fill = "white") +
  geom_jitter(width = 0.1, size = 2) +
  labs(title = "Fuel Efficiency by Safety Rating",
       x = "Safety Rating",
       y = "Fuel Efficiency (km/l)") +
  theme_minimal()

# Display the graph
print(p)

