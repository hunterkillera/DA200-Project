#clean workspace
rm(list=ls(all=TRUE))

#load library
library(ggplot2)
library(data.table)
library(readxl)
library(vtable)

#load data
setwd("~/Desktop/data200/PROJECT/data")
total_frequency_bydate <- read.csv("total_frequency_bydate.csv")
total_frequency_bydate<-as.data.table(total_frequency_bydate)
#convert date column to factor
total_frequency_bydate[,":="(date=factor(total_frequency_bydate$date))]

#covert date column to date
total_frequency_bydate[,":="(date=as.Date(total_frequency_bydate$date))]

#plot timeseries
timeseries<-ggplot(data = total_frequency_bydate, aes(x = date, y = Frequency))+
   geom_line(color = "#00AFBB", size = 0.3
             )

timeseries


