#clean workspace
rm(list=ls(all=TRUE))

#load library
library(ggplot2)
library(data.table)
library(readxl)
library(vtable)

#load data
setwd("~/Desktop/data200/PROJECT/data")
bostondata <- read.csv("bostondata.csv")
bostondata<-as.data.table(bostondata)

#categories in offense_type 
#47 variables
offensetype_Frequency <- bostondata[, list(Frequency = .N), by = offense_type]
#sort the frequency in descending order
offensetype_Frequency<-offensetype_Frequency[order(-Frequency),]
offensetype_Frequency

#categories in offense_group
#27 group
offensegroup_Frequency <- bostondata[, list(Frequency = .N), by = offense_group]
#sort the frequency in descending order
offensegroup_Frequency<-offensegroup_Frequency[order(-Frequency),]
offensegroup_Frequency

#categories in offense_against
#4 group
offenseagainst_Frequency <- bostondata[, list(Frequency = .N), by = offense_against]
offenseagainst_Frequency

#total number based on data
total_frequency_bydate<- bostondata[, list(Frequency = .N), by = date]
total_frequency_bydate
#export data
write.csv(total_frequency_bydate,"~/Desktop/data200/PROJECT/data/total_frequency_bydate.csv", row.names = FALSE)


#pie chart
piechart<- ggplot(offensetype_Frequency, aes(x="", y=Frequency,fill=offense_type))+
  geom_bar(width = 1, stat = "identity") + coord_polar("y", start=0)
piechart



summarytable<-total_frequency_bydate[,list(mean=mean(Frequency),SD=sd(Frequency),F)]
summarytable<-sumtable(total_frequency_bydate)

