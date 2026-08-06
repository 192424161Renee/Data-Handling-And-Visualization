# Import Dataset
energy <- read.csv("Energy_Consumption_Data.csv")

# Display Dataset
print(energy)

# Create two plots in one window
par(mfrow=c(1,2))

# Histogram
hist(energy$Units_Consumed,
     main="Histogram of Units Consumed",
     xlab="Units Consumed (kWh)",
     col="skyblue",
     border="black")

# Density Plot
plot(density(energy$Units_Consumed),
     main="Density Plot of Units Consumed",
     xlab="Units Consumed (kWh)",
     col="blue",
     lwd=2)

# Interpretation
cat("\nInterpretation:\n")
cat("Residential sector has lower energy consumption, while Industrial sector has the highest consumption.\n")
cat("The density plot shows the overall distribution of Units Consumed.\n")

