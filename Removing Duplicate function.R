# simple Data frame creation

mydata = data.frame (NAME =c ('Alisa','Bobby','jodha','jack','raghu','Cathrine','Alisa','Bobby','kumar','Alisa','jack','Cathrine'),
                     Age = c (26,24,26,22,23,24,26,24,22,26,22,25),
                     Score? c (85,63,55,74,31,77,85,63,42,85,74,78))

mydata

#to count number of rows
nrow(mydata)

library(dplyr)

# Remove duplicate rows of the dataframe
distinct(mydata)

#Remove Duplicate Rows based on a variable
library(dplyr)

# Remove duplicate rows of the d??aframe using NAME variable
distinct(mydata,NAME, .keep_all= TRUE)

#Remove Duplicate Rows based on multiple variables

library(dplyr)

# Remove duplicate rows of the dataframe using NAME and Age variables
distinct(mydata, NAME,Age, .keep_all= TRUE)


#DRO??Duplicates in R using unique() function in R

## Apply unique function for data frame in R
unique(mydata)

#Remove Duplicates based on a column using duplicated() function

## unique value of the column in R dataframe 
mydata[!duplicated(mydata$NAME), ] 
?