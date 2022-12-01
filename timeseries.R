#clean workspace
rm(list=ls(all=TRUE))

#load library
library(ggplot2)
library(data.table)
library(readxl)
library(vtable)
library(lubridate)
library(zoo)

#load data
setwd("~/Desktop/data200/PROJECT/data")
total_frequency_bydate <- read.csv("total_frequency_bydate.csv")
total_frequency_bydate<-as.data.table(total_frequency_bydate)
#convert date column to factor
total_frequency_bydate[,":="(date=factor(total_frequency_bydate$date))]

#covert date column to date
total_frequency_bydate[,":="(date=as.Date(total_frequency_bydate$date))]


#time series plot
timeseries<-ggplot(data = total_frequency_bydate, aes(x = date, y = Frequency))+
   geom_line(color = "#00AFBB", size = 0.3
             )
timeseries


#test


#only keep year and month


total_frequency_month <- total_frequency_bydate[,list(month=format(as.Date(total_frequency_bydate$date),
                                                                     "%Y-%m"),frequency=total_frequency_bydate$Frequency)]

merge_month_freqency<-total_frequency_month[, list(frequency = sum(frequency)), by = month]


#export data
write.csv(merge_month_freqency,"~/Desktop/data200/PROJECT/data/merge_month_freqency.csv", row.names = FALSE)

#convert date column to factor
merge_month_freqency[,":="(month=factor(merge_month_freqency$month))]

#covert date column to date
merge_month_freqency[,":="(month=as.yearmon(merge_month_freqency$month))]



#
timeseries_by_month<-ggplot(data = merge_month_freqency, aes(x = month, y = frequency,group = 1))+
  geom_line(color = "#00AFBB", size = 1)  
  
timeseries_by_month


