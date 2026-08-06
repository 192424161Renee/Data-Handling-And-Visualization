# Import Dataset
energy <- read.csv("Energy_Consumption_Data.csv")

# Calculate Average Renewable Usage
average <- aggregate(Renewable_Usage ~ Sector,
                     data=energy,
                     mean)

# Display Average
print(average)

# Bar Chart
barplot(average$Renewable_Usage,
        names.arg=average$Sector,
        col=c("orange","green","skyblue"),
        main="Average Renewable Usage by Sector",
        ylab="Renewable Usage (%)")

cat("\nInterpretation:\n")
cat("Residential sector has the highest average renewable energy usage.\n")
cat("Industrial sector has the lowest renewable energy adoption.\n")
