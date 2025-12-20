# exercise 2

#Q1. creating a vector of cities with assigned temperatures
temp <- c(35, 88, 42, 84, 81, 30)

#Q2. creating a vector of cities and assigned to the object city
city <- c("Beijing"," Lagos", "Paris", "RiodeJaneiro", "SanJuan", "Toronto")

#Q3. using the names function to associate the temp data to the city
names(temp) <- city

#Q4. printing the temp. of the first three cities
city[1:3]

#Q5. printing the temp of two cities
city[c(3,5)]

#Q6 creating a seq of numbers from 12 to 73
12:73

#7 printing odd numbers less than 100
seq(1,100,2)

#Q8  creating a vector of numbers starting from 6 but less than 55
length(seq(6,55,4/7))

#Q9. checking the class of the object a
a <- seq(1, 10, 0.5)
class(a)

#Q10. checking the class of a
a <- seq(1, 10)
class(a)

#Q11. checking the class of 1L
class(1L)
#coercing x to integers
x <- c("1", "3", "5")
as.integer(x)
