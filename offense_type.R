#clean workspace
rm(list=ls(all=TRUE))

#load library
library(ggplot2)
library(data.table)
library(readxl)
library(vtable)

setwd("~/Desktop/data200/PROJECT/data")
bostondata <- read.csv("bostondata.csv")
bostondata<-as.data.table(bostondata)

bostondata[,":="(year=factor(bostondata$year,levels=c("2016","2017","2018",
                                                      "2019","2020","2021")))]

#top five types in the column
#destruction/damage/vandalism of property (except arson)
#simple assault 
#drug/narcotic violations
#all other larceny
#theft from motor vehicle (except theft of motor vehicle parts or accessories)

#top5 types in bostondata
#dp = damage property
dpbostondata<-bostondata[offense_type=="destruction/damage/vandalism of property (except arson)"]
#get a frequency table by year
dpbostondata_Frequency <- dpbostondata[, list(Frequency = .N), by = year]
dpbostondata_Frequency
#bar chart
dphistogram<-ggplot(dpbostondata_Frequency, aes(x=year,y=Frequency,fill=year)) + 
  geom_bar(stat="identity", width=0.5)+ labs(title="Damage Property Data") +
  scale_fill_brewer()
dphistogram

#sa = simple assault
sabostondata<-bostondata[offense_type=="simple assault"]
#get a frequency table by year
sabostondata_Frequency <- sabostondata[, list(Frequency = .N), by = year]
sabostondata_Frequency
#barchart
sahistogram<-ggplot(sabostondata_Frequency, aes(x=year,y=Frequency,fill=year)) + 
  geom_bar(stat="identity", width=0.5)+ labs(title="Simple Assault Data") +
  scale_fill_brewer()
sahistogram

#dv = drug violations
dvbostondata<-bostondata[offense_type=="drug/narcotic violations"]
#get a frequency table by year
dvbostondata_Frequency <- dvbostondata[, list(Frequency = .N), by = year]
dvbostondata_Frequency
#barchart
dvhistogram<-ggplot(dvbostondata_Frequency, aes(x=year,y=Frequency,fill=year)) + 
  geom_bar(stat="identity", width=0.5) + labs(title="Drug Violation Data") +
  scale_fill_brewer()
dvhistogram

#aol = all other larceny
aolbostondata<-bostondata[offense_type=="all other larceny"]
#get a frequency table by year
aolbostondata_Frequency <- aolbostondata[, list(Frequency = .N), by = year]
aolbostondata_Frequency
#barchart
aolhistogram<-ggplot(aolbostondata_Frequency, aes(x=year,y=Frequency,fill=year)) + 
  geom_bar(stat="identity", width=0.5)+ labs(title="All Other Larceny Data") +
  scale_fill_brewer()
aolhistogram

#tfmv = theft from motor vehicle
tfmvbostondata<-bostondata[offense_type==
                             "theft from motor vehicle (except theft of motor vehicle parts or accessories)"]
#get a frequency table by year
tfmvbostondata_Frequency <- tfmvbostondata[, list(Frequency = .N), by = year]
tfmvbostondata_Frequency
#barchart
ftmvhistogram<-ggplot(tfmvbostondata_Frequency, aes(x=year,y=Frequency,fill=year)) + 
  geom_bar(stat="identity", width=0.5) + labs(title="Theft from Motor Vehicle Data") +
  scale_fill_brewer()
ftmvhistogram








