#clean workspace
rm(list=ls(all=TRUE))

#load library
library(ggplot2)
library(data.table)
library(readxl)
library(vtable)

#load data
setwd("~/Desktop/data200/PROJECT")
bostondata <- read.csv("coredata.csv")
bostondata<-as.data.table(bostondata)


#change the data type
bostondata[,":="(year=factor(bostondata$year,levels=c("2016","2017","2018",
                                                      "2019","2020","2021")))]
#use facet_grid to plot different data for each year
histogramtotal<-ggplot(bostondata, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count") +
  facet_grid(cols=vars(year))
histogramtotal



#get histogram for offense_against for total number
histogram<-ggplot(bostondata, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count")
histogram


###get individual histogram for each year if its needed
#get data for only 2016 data and get histogram for offense against for 2016
bostondata2016<-bostondata[year==2016]

histogram2016<-ggplot(bostondata2016, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count")
histogram2016

#get data for only 2017 data and get histogram for offense against for 2017
bostondata2017<-bostondata[year==2017]

histogram2017<-ggplot(bostondata2017, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count")
histogram2017

#get data for only 2018 data and get histogram for offense against for 2018
bostondata2018<-bostondata[year==2018]

histogram2018<-ggplot(bostondata2018, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count")
histogram2018

#get data for only 2019 data and get histogram for offense against for 2019
bostondata2019<-bostondata[year==2019]

histogram2019<-ggplot(bostondata2019, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count")
histogram2019

#get data for only 2020 data and get histogram for offense against for 2020
bostondata2020<-bostondata[year==2020]

bostondata2020<-ggplot(bostondata2020, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count")
bostondata2020

#get data for only 2021 data and get histogram for offense against for 2021
bostondata2021<-bostondata[year==2021]

bostondata2021<-ggplot(bostondata2021, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count")
bostondata2021














