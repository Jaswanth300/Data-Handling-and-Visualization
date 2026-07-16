# ---------------------------------------
# EXPERIMENT 5
# Website Analytics
# ---------------------------------------

# Dataset
date <- as.Date(c("2023-01-01",
                  "2023-01-02",
                  "2023-01-03",
                  "2023-01-04",
                  "2023-01-05"))

page_views <- c(1500,1600,1400,1650,1800)

ctr <- c(2.3,2.7,2.0,2.4,2.6)

# Sample data for stacked area chart
likes <- c(200,220,180,250,280)
shares <- c(80,90,70,100,120)
comments <- c(50,60,45,70,75)

# ---------------------------------------
# Q1 - Line Chart
# ---------------------------------------

plot(date,
     page_views,
     type="o",
     col="blue",
     pch=19,
     xlab="Date",
     ylab="Page Views",
     main="Daily Website Page Views")

# ---------------------------------------
# Q2 - Bar Chart
# ---------------------------------------

barplot(ctr,
        names.arg=date,
        col="orange",
        xlab="Date",
        ylab="Click-through Rate (%)",
        main="Daily Click-through Rate")

# ---------------------------------------
# Q3 - Stacked Area Chart
# ---------------------------------------

interaction <- rbind(likes,shares,comments)

colnames(interaction) <- as.character(date)

barplot(interaction,
        col=c("skyblue","green","pink"),
        legend=c("Likes","Shares","Comments"),
        main="Website User Interactions")