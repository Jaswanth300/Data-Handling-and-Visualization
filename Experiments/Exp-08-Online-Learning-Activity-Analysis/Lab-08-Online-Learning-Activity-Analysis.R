# Experiment 8 - Online Learning Activity Analysis

# Dataset
data <- data.frame(
  Student_ID = c("L01","L02","L03","L04","L05","L06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Age = c(20,22,19,21,23,20),
  Course = c("R","R","SQL","R","R","SQL"),
  Study_Time = c(3.5,4.2,2.0,5.0,2.5,4.0),
  Videos_Watched = c(12,15,8,18,9,14),
  Quiz_Score = c(78,85,65,92,70,88),
  Login_Date = as.Date(c(
    "2025-01-05",
    "2025-01-05",
    "2025-02-08",
    "2025-02-08",
    "2025-03-12",
    "2025-03-12"
  ))
)

# Histogram
hist(data$Quiz_Score,
     col="skyblue",
     main="Quiz Score Distribution",
     xlab="Quiz Score")

# Boxplot
boxplot(Quiz_Score ~ Course,
        data=data,
        col=c("orange","lightgreen"),
        main="Quiz Score by Course",
        xlab="Course",
        ylab="Quiz Score")

# Bubble Scatter Plot
symbols(data$Study_Time,
        data$Quiz_Score,
        circles=data$Videos_Watched,
        inches=0.25,
        bg=rgb(0,0,1,0.4),
        fg="black",
        xlab="Study Time (Hours)",
        ylab="Quiz Score",
        main="Study Time vs Quiz Score")

# Monthly Average
data$Month <- format(data$Login_Date,"%Y-%m")

monthly_avg <- aggregate(
  Quiz_Score ~ Month,
  data=data,
  mean
)

plot(monthly_avg$Quiz_Score,
     type="o",
     col="blue",
     xaxt="n",
     xlab="Month",
     ylab="Average Quiz Score",
     main="Monthly Average Quiz Score")

axis(1,
     at=1:nrow(monthly_avg),
     labels=monthly_avg$Month)

# Moving Average
library(zoo)

ma <- rollmean(monthly_avg$Quiz_Score,
               k=2,
               fill=NA)

lines(ma,
      col="red",
      lwd=2)

legend("topleft",
       legend=c("Average","Moving Average"),
       col=c("blue","red"),
       lty=1)