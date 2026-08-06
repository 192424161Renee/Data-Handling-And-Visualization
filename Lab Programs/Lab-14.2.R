# Import Dataset
energy <- read.csv("Energy_Consumption_Data.csv")

# Display Dataset
print(energy)

# Bubble Scatter Plot
symbols(
  energy$Temperature,
  energy$Units_Consumed,
  circles=energy$Peak_Hours,
  inches=0.25,
  bg=rgb(0,0,1,0.5),
  fg="black",
  xlab="Temperature (°C)",
  ylab="Units Consumed (kWh)",
  main="Temperature vs Units Consumed"
)

cat("\nInterpretation:\n")
cat("Bubble size represents Peak Hours.\n")
cat("Larger bubbles indicate higher peak-hour usage.\n")
