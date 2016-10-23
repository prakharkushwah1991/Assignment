#ASSIGNMENT 2.
#LOADING THE DATA FILE.
data<-read.csv("C:/Users/prakhar/Desktop/file/forestfires.csv")
data
summary(data)

#1.	Compute the square of each data point in the X column and store the result in a new column called "X_square"?
data$x_square<-(data$X*data$X)
data
#2.Compute the sum, mean, median, standard deviation of the following columns
#a.	FMCC
mean_fmcc<-data$FFMC
mean(mean_fmcc)
sum_fmcc<-data$FFMC
sum(sum_fmcc)
median_fmcc<-data$FFMC
median(median_fmcc)
sd_fmcc<-data$FFMC
sd(sd_fmcc)
#b.	DMC
mean_dmc<-data$DMC
mean(mean_dmc)
sum_dmc<-data$DMC
sum(sum_dmc)
median_dmc<-data$DMC
median(median_dmc)
sd_dmc<-data$DMC
sd(sd_dmc)
#c.	DC
mean_dc<-data$DC
mean(mean_dc)
sum_dc<-data$DC
sum(sum_dc)
median_dc<-data$DC
median(median_dc)
sd_dc<-data$DC
sd(sd_dc)

data
#3.	Create another column called "Month", which has full values of month, i.e "aug" becomes "August", "sep" becomes "September" and so on
#apply function if else.
data$new_month<-toupper(data$month)
data

#4.	Create another Column Day_Num where day will be from 1 to 7 - 1 being Sunday, 2 being Monday, 3 being Tuesday and so on
install.packages("lubridate")
library(lubridate)
data$day_num<-wday(day(data$day))

#5. find the correlation between x and y.
data$cor_x<-data$X
data$cor_y<-data$Y
cor(data$cor_x,data$cor_y)

#6. find the total rain,wind for each month.
install.packages("dplyr")
data
library(dplyr)
data
summarise(group_by(data,month),total_rain_wind=sum(rain,wind))

#7. find the mean rain,wind for each month.
summarise(group_by(data,month),mean_rain=mean(rain),mean_wind=mean(wind))

#8.	Find the number of records present for each month
data
nrow(data$month)

#9. find the number of records present in month-day combination.
install.packages("sqldf")
library(sqldf)
data
x<-sqldf('select,month,count(month) as Cnt from "data" group by month')


