#working directory
getwd()

#reading data 
data1<-read.csv("data frame 1.csv",1)

#viewing data 
View(data)
class(data)


#reading data 
data2<-read.csv("data frame 2.csv",1)

#viewing data 
View(data)
class(data)
install.packages("data.table")


library(d?ta.table)
rbindlist(list(data1, data2))[, lapply(.SD, sum, na.rm = TRUE), by = Students]
