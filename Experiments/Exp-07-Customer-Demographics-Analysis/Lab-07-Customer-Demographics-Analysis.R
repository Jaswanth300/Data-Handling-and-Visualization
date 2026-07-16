# -----------------------------------------
# EXPERIMENT 7
# Customer Demographics Analysis
# -----------------------------------------

# Dataset
customer_id <- c(1,2,3)
age <- c(28,35,42)
gender <- c("Female","Male","Female")
income <- c(50000,60000,75000)

# -----------------------------------------
# Q1 - Bar Chart
# -----------------------------------------

barplot(age,
        names.arg = customer_id,
        col = "skyblue",
        xlab = "Customer ID",
        ylab = "Age",
        main = "Customer Age Distribution")

# -----------------------------------------
# Q2 - Pie Chart
# -----------------------------------------

gender_count <- table(gender)

pie(gender_count,
    col = c("pink","lightblue"),
    main = "Gender Distribution")

# -----------------------------------------
# Q3 - Table
# -----------------------------------------

customer_table <- data.frame(
  Customer_ID = customer_id,
  Age = age,
  Gender = gender,
  Income = income
)

print(customer_table)