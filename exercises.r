# R is a statistical tool. Which means it applies different rules of statistics to get results about data.
# R is used for Analysis of Data.

a <- 10
print(a)

# R has sorted the entire data based on 5 different types, namely:
#  Double
#  Integer
#  Character
#  Logical
#  Complex



### DOUBLE
# Double type are like floating/float numbers in Python
# Any number which is whole or a fraction, is a Double type. Any number entered will be stored as a Double by default

### INTEGER
# literal math definition, integer is a whole number (no fractions or decimal points)
# All integer are denoted by "L" after the number

# x = 12.5L
# X is a fraction but we are trying to store it as an Integer by adding an L after 12.5. 
# R understands it and converts it to a Double to avoid data loss
# if we store a fraction value inside an Integer
# R will automatically store the value as a Double to avoid any data loss

### LOGICAL
# logical are True (T) or False (F)

### COMPLEX
# complex numbers are numbers which have a combination of real + imaginary numbers. Ex.: 3+3i

### CHARACTER
# Letters, words... or:
#  “12” is stored in quotes, it is of a Character data type.
# R is case sensitive
# Uppercase is always greater than lowercase letters
y <- "incention"
z <- "incention"
z>a # TRUE

# Numerics: Doubles and Integers
# Max limit of an Integer is 2 Billion (2*10^9)




# Variable Declaration forms with operators:
# 1st 
Name <- "Harry Potter"

# 2nd
Name = "Harry Potter"	

# 3rd
"Harry Potter" -> Name


# Operators
# Operators in R programming are categorized into 5 different categories namely:
#    Arithmetic Operators
            # addition +
            # substraction -
            # division /
            # multiplication *
            # exponential ^

#    Relational Operators
            # This show in boolean, True or False
            # Less than (<)
            # Greater than (>)
            # Equal to (==)
            # Not Equal to (!=)
            # Less than equal to (<=)
            # Greater than equal to (>=)

#    Logical Operators
            # & - AND operator: True * True => False
            # | - OR operator: True + False => True
            # ! - NOT operator: True => False

#    Assignment Operators
            # Leftward assignment:  <-     <<-   =
            # Rightward Assignment:  ->   ->>


#    Special Operators.
            # Sequence (:)
            # Search value in vector (%any%)


# Arithmetics:
a = 20
b = 10
c = a+b
d = a/b
e = a*b
f = a-b
g = a%%b
h = a%/%b

print(c)
print(d)
print(e)
print(f)
print(g)
print(h)

# Relationals:
a<b
a>b
a==b
a!=b
a<=b
a>=b

# Logical:
# AND (&): AND operator means checking both the values. If any one of them is FALSE, it will return as FALSE.
# OR (|): OR operator means checking either one of the values. If any one of them is TRUE, it will return as TRUE.
# NOT (!): NOT operator would just return the opposite of the value. If the value is TRUE, it will return FALSE and vice-versa.

a = 20
b = 0

a&b
a|b
!a

# In the case of ‘&’ operation, both a and b must be Non-Zero. Hence the output is FALSE.
# In case of ‘|’ operation, only one should be Non- Zero. Hence the output is TRUE.
# In case of ‘!’ operation, the output will be the opposite of its value. Hence the output is FALSE.

# we cannot perform AND (&) operation on character and Double data type variables.


# Assignment:
#Leftward Assignment
a<- 10
a<<- 10

# Assignment always works as Leftward in case of =
a = 10

#Rightward Assignment
10 -> a
10 ->> a




# FUNCTIONS
# procedures or routines are called Functions

# 2 types of functions: 
# -- Built-in functions (already stored in memory, like print(). sqrt() ....)
# -- Custom functions

# sum function
sum(a,b)
# OR
print(a+b)
# OR
c = a+b
print(c)

# Square Root function - sqrt()
sqrt(16)

# Type Of function - typeOf()
a = 10
typeof(a) # Return "Double"



# CUSTOM FUNCTION

# components:
#   FunctionName <- Function(arguments){
#        Statements....
#        ....
#   }

# Criando uma função que multiplica ao quadrado o numero dado

aoquadrado <- function(a){
  NumeroAoQuadrado <- a * a
  print(NumeroAoQuadrado)
}

aoquadrado(32)






# PACKAGES!

# Example to generate graph from data bmi:
install.packages("ggplot2")
library(ggplot2)

# example above doesn't work because there's no data ;-)
ggplot(data=bmi, aes(x=Weight, y=Height, color= State)) + geom_point()

# Ggplot2 Cheatsheet = https://rstudio.com/wp-content/uploads/2016/03/ggplot2-cheatsheet-portuguese.pdf 





# IF-ELSE Conditions


#      if(condition){
#        if statements to be executed....
#      }
#      else{
#        else statements to be executed....
#      }



# LOOPS
# "While" Loops and "For" loops

count <- 1

while(count < 100){
  print("I won’t print this again")
  count <- count + 1
}

# print all the names from that sheet under the column ‘Name’
Names <- c("Arthur II","Greg","Rachel","Chandler","Joseph")

for(i in Names){
  print(i)
}

for(i in 1:10){ 
  print(i) 
  }


# Vector
# Vector are like a list, but they store values of the same data type!
# In R, all variable values are stored in Vectors.
# So when a = 1, R stores it as a Vector with value 1 and size 1.
# Now, when we have x = 1 2 3 4, R stores it as a Vector x with values 1 2 3 4 and size 4. (remember: this is a Double type, theresn't "" to be a character and thersn't L in the end to be a Integer)

V1 <- c(“Tom”, “Harry”, “John”, “Mike”)

V2 <- c(1,2,3,4,5)
# OR
V2 = 1:5

print(V2[3]) # print onle 3nd position of a vector V2 (in this case is a "3" value as a Double type)

seq(1,20) # gera uma sqeuncia de 1 a 20
seq(1,20,2) # gera uma sequencia de 1 a 20 em saltos de 2 (ou seja, de outra forma, só os impares)

V3 = seq(1,20,2) # Cria um vetor com o resultado da fuction seq()
print(V3)



# Repetition function rep()

rep(3,5)
V1 = rep(3,5)
print(V1)

rep("a",5)
V1 = rep("a",5)
print(V1)


# we can directly add, subtract divide or multiply the two vectors.

v1 = c(8,7,5,3,6)
v2 = c(4,7,1,0,9)

add.vector = v1+v2
print(add.vector)

subtract.vector = v1-v2
print(subtract.vector)

multiply.vector = v1*v2
print(multiply.vector)

divide.vector = v1/v2
print(divide.vector)

# There are based in list positions
#  v1 = c( 8 , 7 , 5 , 3 , 6 )
#          |   |   |   |   |
#  v2 = c( 4 , 7 , 1 , 0 , 9 )

# If v2=c(4,7) 
# R will be repeat the sequence to be with the same length as v1, like: v2=c(4,7,4,7,4,7)

v1 = c(8,7,5,3,6,7)
v2 = c(4,7)

add.vector = v1+v2
print(add.vector)

subtract.vector = v1-v2
print(subtract.vector)

multiply.vector = v1*v2
print(multiply.vector)

divide.vector = v1/v2
print(divide.vector)



# Matrix

# Vectors are a group of elements of a similar data type which represent data in a single dimension.
# This means it will have ‘1 row and n columns’ which can be written as (1,n)

# Matrix is similar to a Vector but it is two dimensional 
# it contains ‘m rows and n columns’ which can be written as (m,n).

# Matrix is defined as a group of similar elements arranged in two dimensions.


# INDEXING are how we can access each element in a Matrix

# Matrix is done using a combination of row numbers and column numbers inside square brackets
# like [row1,col3]


# Matrix can be created using 3 functions:
matrix() # matrix function
rbind() # Row bind function
cbind() # Column bind function

# Example:

#vector with 20 values/items
vec = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
# Matrix with 4 rows and 5 columns and with vector vec values
M1 = matrix(vec,4,5)
# print ;-)
print(M1)
#       [,1] [,2] [,3] [,4] [,5]
# [1,]    1    5    9   13   17
# [2,]    2    6   10   14   18
# [3,]    3    7   11   15   19
# [4,]    4    8   12   16   20


# OR the same:

M1 = matrix(c(1:20),4,5)
print(M1)



# OR the same with vectors:
v1 = c(1,5,9,13,17)
v2 = c(2,6,10,14,18)
v3 = c(3,7,11,15,19)
v4 = c(4,8,12,16,20)


M1 = rbind(v1,v2,v3,v4)
print(M1)
#     [,1] [,2] [,3] [,4] [,5]
# v1    1    5    9   13   17
# v2    2    6   10   14   18
# v3    3    7   11   15   19
# v4    4    8   12   16   20


# We have another way in which we can create a Vector using the combine and sequence functions.
# For example, we can use the combine and sequence functions together to create the Matrix M1 which can be written as:
M1 = rbind(c(1:4),c(5:8),c(9:12))
print(M1)


# A column bind function is very similar to a row bind function except for one thing, 
# it binds a Vectors of the same size, Columns.
M1 = cbind(v1,v2,v3,v4)
print(M1)
#      v1 v2 v3 v4
# [1,]  1  2  3  4
# [2,]  5  6  7  8
# [3,]  9 10 11 12
# [4,] 13 14 15 16
# [5,] 17 18 19 20


# RBIND vs CBIND

v1=1:4
v2=5:8
v3=9:12

M1=cbind(v1,v2,v3) # This will create a Vector of 4 rows and 3 columns of the 12 values present in the 3 Vectors
print(M1)

M1 = rbind(c(1:4),c(5:8),c(9:12))

M1=rbind(v1,v2,v3)
print(M1)


print(cbind(c(1:7),c(8:14)))
print(rbind(c(1:7),c(8:14)))



################################


# Data frames
# We can store any data together, like an excel sheet

# Structure:
#    DataFrame_Name = data.frame(
#    col1_name = col1_values,
#    tcol2_name = col2_values,
#    coln_name = coln_values
#    )

# function:
data.frame()

# Let’s use them to create a Data Frame which has 4 columns namely:
# Student_ID, Student_Name, Age and Department.
# With 5 values

Student_List = data.frame(Student_ID = 101:105,
                          Student_Name = c("Mike","Henry","Tom","Harvey","Rachel"),
                          Age = c(21,22,21,20,22),
                          Department = c("IT","EX","EX","CS","IT")
)

