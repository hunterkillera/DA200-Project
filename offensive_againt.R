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


#change the data type
bostondata[,":="(year=factor(bostondata$year,levels=c("2016","2017","2018",
                                                      "2019","2020","2021")))]
#use facet_grid to plot different data for each year
histogramtotal<-ggplot(bostondata, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count") +
  facet_grid(cols=vars(year))   + theme(axis.title.x=element_text(size=30),
                                        axis.title.y=element_text(size=30),
                                        plot.title=element_text(size=30)) +
  labs(x="Offense against" , y="Frequency", title = "Offense Against by Year") + scale_fill_brewer(palette = "Accent")
histogramtotal



#get histogram for offense_against for total number
histogram<-ggplot(bostondata, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count")   + theme(axis.title.x=element_text(size=30),
                                         axis.title.y=element_text(size=30),
                                         plot.title=element_text(size=30)) +
  labs(x="Offense against" , y="Frequency",title = " Total Number of offense Against from 2016-2021") + scale_fill_brewer(palette = "Accent")
histogram


###get individual histogram for each year if its needed
#get data for only 2016 data and get histogram for offense against for 2016
bostondata2016<-bostondata[year==2016]

histogram2016<-ggplot(bostondata2016, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count") + theme(axis.title.x=element_text(size=30),
                                                                 axis.title.y=element_text(size=30),
                                                                 plot.title=element_text(size=30)) +
  labs(x="Offense against" , y="Frequency", title="2016 Offense Against") + scale_fill_brewer(palette = "Accent")
histogram2016

#get data for only 2017 data and get histogram for offense against for 2017
bostondata2017<-bostondata[year==2017]

histogram2017<-ggplot(bostondata2017, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count")+ theme(axis.title.x=element_text(size=30),
                                      axis.title.y=element_text(size=30),
                                      plot.title=element_text(size=30)) +
  labs(x="Offense against" , y="Frequency", title="2017 Offense Against") + scale_fill_brewer(palette = "Accent")
histogram2017

#get data for only 2018 data and get histogram for offense against for 2018
bostondata2018<-bostondata[year==2018]

histogram2018<-ggplot(bostondata2018, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count") + theme(axis.title.x=element_text(size=30),
                                       axis.title.y=element_text(size=30),
                                       plot.title=element_text(size=30)) +
  labs(x="Offense against" , y="Frequency", title="2018 Offense Against") + scale_fill_brewer(palette = "Accent")
histogram2018

#get data for only 2019 data and get histogram for offense against for 2019
bostondata2019<-bostondata[year==2019]

histogram2019<-ggplot(bostondata2019, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count") + theme(axis.title.x=element_text(size=30),
                                       axis.title.y=element_text(size=30),
                                       plot.title=element_text(size=30)) +
  labs(x="Offense against" , y="Frequency", title="2019 Offense Against") + scale_fill_brewer(palette = "Accent")
histogram2019

#get data for only 2020 data and get histogram for offense against for 2020
bostondata2020<-bostondata[year==2020]

bostondata2020<-ggplot(bostondata2020, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count")+ theme(axis.title.x=element_text(size=30),
                                      axis.title.y=element_text(size=30),
                                      plot.title=element_text(size=30)) +
  labs(x="Offense against" , y="Frequency", title="2020 Offense Against") + scale_fill_brewer(palette = "Accent")
bostondata2020

#get data for only 2021 data and get histogram for offense against for 2021
bostondata2021<-bostondata[year==2021]

bostondata2021<-ggplot(bostondata2021, aes(x=offense_against,fill=offense_against)) + 
  geom_histogram(stat="count") + theme(axis.title.x=element_text(size=30),
                                       axis.title.y=element_text(size=30),
                                       plot.title=element_text(size=30)) +
  labs(x="Offense against" , y="Frequency", title="2021 Offense Against") + scale_fill_brewer(palette = "Accent")
bostondata2021














