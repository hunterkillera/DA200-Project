#clean workspace
rm(list=ls(all=TRUE))

#load library
library(ggplot2)
library(data.table)
library(readxl)
library(vtable)

#load data
setwd("~/Desktop/data200/PROJECT/coredata")

# list all .xlsx files in data directory
listOfFileNames <- list.files(pattern  = ".csv")

# read every file in the list into a data table and bind all data tables into one
dt <- rbindlist(lapply(listOfFileNames, read.csv))

#get bosdton data only
bostondata<-dt[city_name=="Boston"]
#add year
bostondata[,":=" (year=substr(date_single,1,4))]


#export the file
write.csv(bostondata,"~/Desktop/data200/PROJECT/coredata.csv", row.names = FALSE)

#get data only for 2016-2021
bostondata2016<-bostondata[year==2016]
write.csv(bostondata,"~/Desktop/data200/PROJECT/bostondata2016.csv", row.names = FALSE)



