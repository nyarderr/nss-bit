## Exercise 3

#using the U.S murder data set

library(dslabs)
data("murders")

#Q1 using the accessor and the sort function

pop <- ("murders$population size")
pop <- sort(pop)
smallest_pop <- pop[1]

#Q2 using order

index <- order(smallest_pop)

#Q3 using the function which.min

min(pop)
index_smallest_pop <- which.min(murders$population)

#Q4

states <- murders$state
state_smallest_pop <- which.min(murders$population)

#Q5 creating a data frame

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro",
          "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)

pop <- ("murders$population size")
my_df <- df
ranks <- my_df
my_df <- data.frame(name=states,rank=ranks)




