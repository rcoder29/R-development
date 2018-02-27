
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







