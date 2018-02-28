# libraries
library(data.table)

# read from a csv file
delays14=read.csv("C:/Raghu Ravuri/Google Drive/Software Development/R-Code/RDev/data/delays14.csv")
delays14.table=data.table(delays14)
#View(delays14)
dim(delays14)
delays14.table

# data.table fast file read#er
#flights <- fread("flights14.csv")
#flights
#dim(flights)




