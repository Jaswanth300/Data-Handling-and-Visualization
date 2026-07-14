# ---------------------------------------
# EXPERIMENT 4
# Product Inventory Management
# ---------------------------------------

# Dataset
product_id <- c(1,2,3,4,5)
product_name <- c("Product A","Product B","Product C","Product D","Product E")
quantity <- c(250,175,300,200,220)

# Sample prices (needed for scatter plot)
price <- c(20,15,18,22,19)

# Product categories (needed for stacked bar chart)
category <- c("Electronics","Electronics",
              "Furniture","Furniture",
              "Stationery")

# ---------------------------------------
# Q1 - Bar Chart
# ---------------------------------------

barplot(quantity,
        names.arg = product_name,
        col = "skyblue",
        xlab = "Products",
        ylab = "Quantity Available",
        main = "Product Inventory Quantity")

# ---------------------------------------
# Q2 - Stacked Bar Chart
# ---------------------------------------

inventory <- matrix(
  c(250,175,
    300,200,
    220,0),
  nrow = 3,
  byrow = TRUE
)

colnames(inventory) <- c("Group 1","Group 2")
rownames(inventory) <- c("Electronics",
                         "Furniture",
                         "Stationery")

barplot(inventory,
        col = c("orange","steelblue","green"),
        main = "Inventory by Product Category",
        xlab = "Groups",
        ylab = "Quantity",
        legend = rownames(inventory))

# ---------------------------------------
# Q3 - Scatter Plot
# ---------------------------------------

plot(price,
     quantity,
     pch = 19,
     col = "red",
     xlab = "Price ($)",
     ylab = "Quantity Available",
     main = "Price vs Quantity Available")

abline(lm(quantity ~ price),
       col = "blue",
       lwd = 2)

print("Insight:")
print("Higher priced products do not necessarily have lower inventory levels.")