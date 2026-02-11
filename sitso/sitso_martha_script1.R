## Exercise 2

#Q1 high temperatures in January

temp <- c(35,88,42,84,88,30)
temp

##Q2 vectors with city names

city <- c("beijing","lagos","paris","rio_de_janeiro","san_juan", "toronto")

##Q3 
names(city) <- temp
city

##Q4 using brackets
city[1:3]

##Q5 using brackets
temp[c(3,5)]

##Q6 using sequence
(12:73)

##Q7 using vectors
seq(1,100,2)

##Q8
seq(6,55,4/7)
length(seq(6,55,4/7))

##Q9 finding the class
a <- seq(1, 10, 0.5)
class(a)

##Q10 finding the class
a <- seq(1, 10)
class(a)

##Q11 confiring the class is an integer
class(1L)

##Q12 defining a vector
x <- c("1", "3", "5")
class(x)
as.numeric(x)
