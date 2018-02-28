# libraries
library(data.table)
library(ggplot2)

# read from a csv file
flights14=read.csv("C:/Raghu Ravuri/Google Drive/Software Development/R-Code/RDev/data/flights14.csv")
# fast read using data.table reader
#flights <- fread("flights14.csv")
flights14.table=data.table(flights14)

# view in table format
#View(flights14)

# to display dimensions of data.table
#dim(flights14)

# to display 10 rows
#flights14.table[1:10]

# subset based on match
ans <- flights14.table[origin == "JFK" & month == 6L]
head(ans)

# order by origin asc and dest descending
ans <- flights14.table[order(origin, -dest)]
head(ans)


# select column as vector
ans <- flights14.table[, arr_delay]
head(ans)

# select a column as list
ans <- flights14.table[, list(arr_delay)]
head(ans)

# show only subset of columns
ans <- flights14.table[, .(origin,arr_delay, dep_delay)]
head(ans)

# rename select columns (list or . can be used to define column list)
ans <- flights14.table[, list(delay_arr = arr_delay, delay_dep = dep_delay)]
head(ans)

# number of trips with delay < 0
ans <- flights14.table[, sum((arr_delay + dep_delay) < 0)]
ans


# compute average arrival and departure delays for jfk
ans <- flights14.table[origin == "JFK" & month == 6L,
               .(m_arr = mean(arr_delay), m_dep = mean(dep_delay))]
ans


# how many trips in June from JFK
ans <- flights14.table[origin == "JFK" & month == 6L, length(dest)]
ans

# alternative way to do this using .N built in variable which has result count
ans <- flights14.table[origin == "JFK" & month == 6L, .N]
ans

# refer one column
flights14.table$origin

# returns all columns except arr_delay and dep_delay
ans <- flights14.table[, !c("arr_delay", "dep_delay"), with = FALSE]
head(ans)
# or
ans <- flights14.table[, -c("arr_delay", "dep_delay"), with = FALSE]
head(ans)


# different options to select columns
# returns year,month and day
ans <- flights14.table[, year:day, with = FALSE]
head(ans)
# returns day, month and year
ans <- flights14.table[, day:year, with = FALSE]
head(ans)
# returns all columns except year, month and day
ans <- flights14.table[, -(year:day), with = FALSE]
head(ans)
ans <- flights14.table[, !(year:day), with = FALSE]
head(ans)


# aggregations (.N is internal variable holding count)
ans <- flights14.table[, .(.N), by = .(origin)]
ans

# by AA
ans <- flights14.table[carrier == "AA", .N, by = origin]
ans

ans <- flights14.table[carrier == "AA", .N, by = .(origin,dest)]
head(ans) 


# mean arrival and dep delays
ans <- flights14.table[carrier == "AA",
               .(mean(arr_delay), mean(dep_delay)),
               by = .(origin, dest, month)]
ans

# https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html
# covered upto keyby

# plot 
# http://r-statistics.co/ggplot2-Tutorial-With-R.html

