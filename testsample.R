# install packages
# install.packages("name")

# help
#?c
#help(c)

# assignment
print("Variables")
x=10
x
y=10.5
y

#fuzzy search on a function
print("search approx function")
apropos("nova")

#numeric
print("numeric")
x=10.5
y-10
x  # print x
y
class(x)  #prints class name of x
class(y)
is.integer(y)
is.double(x)
as.integer(x)
is.integer(TRUE)
is.integer(FALSE) 


#complex
print("Complex")
z=1+2i
z
class(z)

#logical
print("Logical")
z=x>y
z
u=TRUE;v=FALSE
u&v
u|v
!u

#characters and strings
print("Character & Strings")
x=as.character(3.14)
x
class(x)
fname="joe";lname="smith"
paste(fname, lname)
sprintf("%s has %d dollars", "Sam", 100) 
substr("Mary has a little lamb.", start=3, stop=12)
sub("little", "big", "Mary has a little lamb.") 
#help("sub")

# vectors
print("Vectors")
y=c(1,2,3)
y
c(TRUE, FALSE, TRUE, FALSE, FALSE) 
c("aa", "bb", "cc", "dd", "ee") 
length(c("aa", "bb", "cc", "dd", "ee")) 

#combine vectors
n = c(2, 3, 5)
s = c("aa", "bb", "cc", "dd", "ee")
c(n,s)  #combine to one vector
s[2] # access by index
s[-2] # return by removing value at index 2
s[10] # access out of index value results in NA
s[c(2,3)] # access specific elements out
s[c(2,3,3)] # duplicates
s[c(2,1,3)] # out of order
s[2:4] # range index
#help(":") # help
L=c(TRUE, FALSE, TRUE, TRUE, FALSE) #slice with logical Index vector
s[L] # returns only TRUE matches as a vector

#vector arithmetic
a = c(1, 3, 5, 7) 
b = c(1, 2, 4, 8)
5*a #multiply each value by 5
a+b # sum corresponding values
a-b
a*b
a/b

# recycling for uneven size of vectors (repeat)
u = c(10, 20, 30) 
v = c(1, 2, 3, 4, 5, 6, 7, 8, 9) 
u+v

#named vector members
v=c("Mary","Sue")
v
names(v)=c("First","Last") 
v
v["Last"]

#Matrix
A = matrix(c(2, 4, 3, 1, 5, 7), # the data elements 
  nrow=2,              # number of rows 
  ncol=3,              # number of columns 
  byrow = TRUE)        # fill matrix by rows 

A                      # print the matrix 
A[2,3]  # element at a row,col location
A[2,]  # get 2nd row
A[,3]  # get 3rd column
A[,c(1,3)] # extract all rows with 1, 3 columns

# assign names to rows and columns
dimnames(A) = list(c("row1", "row2"),         # row names 
  c("col1", "col2", "col3")) # column names 
A

#matrix construction
B=matrix(c(2,4,3,1,5,7),nrow=3,ncol=2)
B
t(B) #transpose of matrix
C=matrix(c(10,11,12),nrow=3,ncol=1)
c
cbind(B,C) #column bind, to combine
D=matrix(c(10,11),nrow=1,ncol=2)
rbind(B,D) #rbind to combine at row level (like union)

#deconstruction of matrix into a vector (flat)
c(B)

