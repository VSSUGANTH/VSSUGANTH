#working directory
getwd()

#reading data 
data<-read.csv("House.csv",1)

#viewing data 
View(data)
class(data)

#check the number of rows and columns
dim(data)

#summary statistics for all the columns of the data frame
summary(data)
library(plyr)

#Histog?am
hist(data$Dist_Taxi)

#boxplot
boxplot(data$Dist_Taxi)

#Correcting the errors
data$carpet_area<-data$Carpet

data$Dist_Taxi<-as.numeric(data$Dist_Taxi)
class(data$Dist_Taxi)


#Making all uppercase
data$Parking<-toupper(data$Parking)

#Making all Lower?ase
data$Parking<-tolower(data$Parking)
library(stringr)

#Trimming all whitespaces
data$Dist_Taxi<-str_trim(data$Dist_Taxi)

library(stringr)

#Replacing "Not Provided" with "Not Available"
data$Parking<-str_replace(data$Parking,"Not Provided","not availa?le")


#Replacing the outliers of a particular column with median
vec1<-boxplot.stats(data$Dist_Taxi)$out;
data$Dist_Taxi[data$Dist_Taxi %in% vec1]<-median(data$Dist_Taxi)
#Checking for missing values in the entire dataframe

any(is.na(data))

#Checking fo? the total number of missing values in the entire dataframe

sum(is.na(data))

#Checking for the total number of missing values in a particular column

sum(is.na(data$Dist_Taxi))

#Eliminating missing values completely from the entire dataframe

na.omit(da?a)

#Eliminating missing values completely from a particular column

na.omit(data$Dist_Taxi)

#Replacing the NA's in the entire dataframe with '0's

data[is.na(data)]<- 0

#Replacing the NA's in a particular column with '0's

data$Dist_Taxi[is.na(data$Dist?Taxi)]<-0
