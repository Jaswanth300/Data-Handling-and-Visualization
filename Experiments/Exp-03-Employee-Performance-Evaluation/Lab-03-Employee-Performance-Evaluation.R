# -----------------------------------
# SET 3 - Employee Performance Evaluation
# -----------------------------------

# Create Dataset
employee_id <- c(1, 2, 3, 4, 5)
department <- c("Sales", "HR", "Marketing", "Sales", "HR")
service <- c(5, 3, 7, 4, 2)
performance <- c(85, 92, 78, 90, 76)

# -----------------------------------
# Q1 - Line Chart
# -----------------------------------

plot(employee_id,
     performance,
     type = "o",
     col = "blue",
     pch = 19,
     xlab = "Employee ID",
     ylab = "Performance Score",
     main = "Employee Performance Trend")

legend("bottomleft",
       legend = "Performance Score",
       col = "blue",
       lty = 1,
       pch = 19)

# -----------------------------------
# Q2 - Bar Chart
# -----------------------------------

dept_count <- table(department)

barplot(dept_count,
        col = c("skyblue","orange","lightgreen"),
        main = "Employees by Department",
        xlab = "Department",
        ylab = "Number of Employees")

# -----------------------------------
# Q3 - Scatter Plot
# -----------------------------------

plot(service,
     performance,
     pch = 19,
     col = "red",
     xlab = "Years of Service",
     ylab = "Performance Score",
     main = "Years of Service vs Performance")

# Best Fit Line
abline(lm(performance ~ service),
       col = "blue",
       lwd = 2)

# -----------------------------------
# Insight
# -----------------------------------

print("Insight:")
print("Employees with more years of service generally show better performance, although there are minor variations.")