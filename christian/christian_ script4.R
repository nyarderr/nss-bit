
# Exercise 2,12
#q1. creating a vector of temperature for fahrenheit
temp_fahrenheit <- c(35, 88, 42, 84, 81, 30)

#creating a vector of cities
city <- c("Beijing", "Lagos", "Paris", "RiodeJaneiro", "San Juan", "Toronto")

#creating a data frame for the city and the temperature.
city_temp <- data.frame(names=city, temperature=temp_fahrenheit)

# converting the temperature from Fahrenheit to Celsius using the formula C = 5/9 * (F −32).
temp_celsius <- 5/9*(temp_fahrenheit-32)

#2. calculating the sum of (1+1/22 +1/32 +...1/1002)
# let n be the denominator.
n <- c(1:100)
sum(1/n^2)

# calling the murders data from the library
library(dslabs)
data(murders)

#3.a. computing the per 100,000 murder rate.
murder_rate <- murders$total/murders$population*100000

#3.b. calculating the average of the murder_rate 
mean(murder_rate)


