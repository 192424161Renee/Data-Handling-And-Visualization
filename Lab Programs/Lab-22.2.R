# Create fine status
fine_status <- ifelse(library_data$Fine_Amount > 0,
                      "With Fine",
                      "Without Fine")

# Count users
fine_count <- table(fine_status)

# Pie Chart
pie(fine_count,
    main = "Users With and Without Fines",
    col = c("orange", "lightgreen"),
    labels = paste(names(fine_count), fine_count))
