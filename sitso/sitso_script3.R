## Exercise 3

##Question 1
#using a previous data frame;

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro",
          "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)

##converting temperature from Fahrenheit to Celsius.

city_temps$temperature_c <- (5/9)*(-32)

##Question 2
#using the sum function

sum(1 + 1/2^2 + 1/3^2 + . ,. ,.+ 1/100^2)


##Question 3
#using mean and average

murder_rate <- (murders$total/murders$population)*100000

average_murder_rate <- mean(murder_rate)

