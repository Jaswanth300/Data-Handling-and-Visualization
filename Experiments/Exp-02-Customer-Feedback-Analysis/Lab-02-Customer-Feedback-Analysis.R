# -----------------------------
# EXPERIMENT 2
# Customer Feedback Analysis
# -----------------------------

# Dataset
customer <- data.frame(
  Customer_ID = c(1,2,3,4,5),
  Age = c(25,30,35,28,40),
  Satisfaction = c(4,5,3,4,5)
)

# -----------------------------
# Q1 - Histogram of Customer Ages
# -----------------------------
hist(customer$Age,
     col = "skyblue",
     main = "Customer Age Distribution",
     xlab = "Age",
     ylab = "Frequency")

# -----------------------------
# Q2 - Pie Chart of Satisfaction
# -----------------------------
pie(table(customer$Satisfaction),
    col = rainbow(3),
    main = "Customer Satisfaction Scores")

# -----------------------------
# Q3 - Stacked Bar Chart
# -----------------------------

customer$Age_Group <- c("20-29","30-39","30-39","20-29","40+")

tab <- table(customer$Age_Group,
             customer$Satisfaction)

barplot(tab,
        col = rainbow(3),
        main = "Satisfaction by Age Group",
        xlab = "Age Group",
        ylab = "Count",
        legend = TRUE)

# -----------------------------
# Q4 - Word Cloud
# -----------------------------

install.packages("wordcloud")
install.packages("RColorBrewer")

library(wordcloud)
library(RColorBrewer)

feedback <- c(
  "Excellent",
  "Service",
  "Friendly",
  "Staff",
  "Fast",
  "Delivery",
  "Quality",
  "Satisfied",
  "Support",
  "Quick",
  "Response",
  "Experience",
  "Recommended",
  "Innovative",
  "Reliable",
  "Affordable",
  "Professional",
  "Helpful",
  "Comfortable",
  "Trustworthy"
)

wordcloud(
  feedback,
  random.order = FALSE,
  colors = brewer.pal(8, "Dark2")
)