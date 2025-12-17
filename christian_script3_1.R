# Exercise

#calling dslabs from the library
library(dslabs)

#loading the murders data set
data(murders)

#Q1a. accessing the population of the murders data and assigning it to the object pop.
pop <- murders$population

#Q1b. sorting the population of the murders data
sort(pop)

#Q1c. checking the smallest population size
sort(pop)[1]
#Q2. finding the index of the smallest population size using order.
order(pop)[1]

#Q3. using the function which.min to print the min of pop.
which.min(pop)

#Q4. accessing the murders state and identifying the smallest state.
states <- murders$state
states[which.min(pop)]

#Q5. creating a data frame with the ranks and the state names as object states.
ranks <- rank(pop)
my_df <- data.frame(state=states, pop_rank=ranks)

#Q6. oderring my_df with the object ind as index and creating a data frame for it.
ind <- order(pop)
my_df_ordered <- my_df[ind, ]

#Q7a.# Loading the data for na_example.
data("na_example")

# Q7b. Computing the average of na_example while ignoring NA values.
mean(na_example, na.rm = TRUE)
#> [1] 2.112112