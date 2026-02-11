## Exercise 3

## load libraries and data
library(dslabs)
data("murders")

## Question 1
pop <- murders$population

### using sort 
pop <- sort(pop)

## smallest population using []
smallest_poulation <- pop[1] # 563626



## Question 2
## smallest population using ord
index <- order(murders$population)[1]

murders$population[index] ## testing if it works


## Question 3
## using which.min
index <- which.min(murders$population)

murders$population[index] ## testing if it works


## Question 4
states <- murders$state

## state with smallest population
states[index]


## Question 5
## ranking each state based on population
ranks <- rank(murders$population)

#murders$state[ranks==nrow(murders)] ## testing if it works
my_df <- data.frame(state = murders$state, rank = ranks)
#my_df[ind,]

## Question 6
## ordering the data frame based on population
ind <- order(murders$population)

my_df <- data.frame(state = murders$state[ind], population = murders$population[ind], rank = ranks[ind])


## Question 7
data("na_example")

### identifying NAs 
ind <- is.na(na_example)
sum(ind) ## number of NAs - 145


## Question 8
sum(!is.na(na_example))


