# -----------------------------------------
# EXPERIMENT 6
# Product Sales Analysis
# -----------------------------------------

# Dataset
product <- c("Product A", "Product B", "Product C")

jan <- c(2000, 1500, 1200)
feb <- c(2200, 1800, 1400)
mar <- c(2400, 1600, 1100)

sales <- rbind(jan, feb, mar)

# -----------------------------------------
# Q1 - Grouped Bar Chart
# -----------------------------------------

barplot(sales,
        beside = TRUE,
        names.arg = product,
        col = c("skyblue", "orange", "lightgreen"),
        xlab = "Products",
        ylab = "Sales",
        main = "Quarterly Product Sales")

legend("topright",
       legend = c("January", "February", "March"),
       fill = c("skyblue", "orange", "lightgreen"))

# -----------------------------------------
# Q2 - Stacked Area Chart
# -----------------------------------------

months <- c(1,2,3)

likes <- c(sum(jan), sum(feb), sum(mar))

plot(months,
     likes,
     type = "l",
     lwd = 3,
     col = "blue",
     xaxt = "n",
     xlab = "Month",
     ylab = "Total Sales",
     main = "Overall Sales Trend")

axis(1,
     at = months,
     labels = c("January", "February", "March"))

polygon(c(months, rev(months)),
        c(rep(0,3), rev(likes)),
        col = "lightblue",
        border = NA)

# -----------------------------------------
# Q3 - Table
# -----------------------------------------

sales_table <- data.frame(
  Product = product,
  January = jan,
  February = feb,
  March = mar
)

print(sales_table)