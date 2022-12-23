#clean workspace
rm(list=ls(all=TRUE))

#load library
library(ggplot2)
library(data.table)
library(readxl)
library(vtable)
library(crimedata)
#I downloaded data from 
#https://osf.io/zyaqn/wiki/3.%20Get%20the%20data/ 
#load data
setwd("~/Desktop/data200/PROJECT/coredata")


#get data
bostondata<-get_crime_data(
  cities = "Boston",
  type = "extended",
  years = 2016:2021
)
#transfer to data table
bostondata <- as.data.table(bostondata)

#add year column
bostondata[,":=" (year=substr(date_single,1,4))]
bostondata[,":=" (date=substr(date_single,1,10))]



#export the file
write.csv(bostondata,"~/Desktop/data200/PROJECT/data/bostondata.csv", row.names = FALSE)

#get data only for 2016-2021
bostondata2016<-bostondata[year==2016]
write.csv(bostondata2016,"~/Desktop/data200/PROJECT/data/bostondata2016.csv", row.names = FALSE)

bostondata2017<-bostondata[year==2017]
write.csv(bostondata2017,"~/Desktop/data200/PROJECT/data/bostondata2017.csv", row.names = FALSE)

bostondata2018<-bostondata[year==2018]
write.csv(bostondata2018,"~/Desktop/data200/PROJECT/data/bostondata2018.csv", row.names = FALSE)

bostondata2019<-bostondata[year==2019]
write.csv(bostondata2019,"~/Desktop/data200/PROJECT/data/bostondata2019.csv", row.names = FALSE)

bostondata2020<-bostondata[year==2020]
write.csv(bostondata2020,"~/Desktop/data200/PROJECT/data/bostondata2020.csv", row.names = FALSE)

bostondata2021<-bostondata[year==2021]
write.csv(bostondata2021,"~/Desktop/data200/PROJECT/data/bostondata2021.csv", row.names = FALSE)




