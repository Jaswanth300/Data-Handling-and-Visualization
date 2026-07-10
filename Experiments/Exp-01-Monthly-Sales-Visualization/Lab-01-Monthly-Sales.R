# Monthly Sales Data

# Create data
month <- c("January", "February", "March", "April", "May")
sales <- c(15000, 18000, 22000, 20000, 23000)

# -----------------------------
# 1. Line Chart
# -----------------------------
plot(sales,
     type = "o",
     xaxt = "n",
     col = "blue",
     xlab = "Month",
     ylab = "Sales ($)",
     main = "Monthly Sales Data")

axis(1, at = 1:5, labels = month)

# -----------------------------
# 2. Bar Chart
# -----------------------------
products <- c("Product A","Product B","Product C","Product D","Product E")
product_sales <- c(45000,38000,52000,41000,48000)

barplot(product_sales,
        names.arg = products,
        col = "orange",
        xlab = "Products",
        ylab = "Sales ($)",
        main = "Top Selling Products")

# -----------------------------
# 3. Scatter Plot
# -----------------------------
advertising <- c(2000,2500,3000,2800,3500)

plot(advertising,
     sales,
     pch = 19,
     col = "red",
     xlab = "Advertising Budget ($)",
     ylab = "Monthly Sales ($)",
     main = "Advertising Budget vs Monthly Sales")