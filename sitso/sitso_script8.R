##EXERCISE 4.4

#LOADING THE PACKAGES

library(dplyr)
library(dslabs)
data(murders)

#QUESTION 1

#EXAMPLE
murders <- mutate(murders,population_in_millions = population/10^6)

#SOLUTION
#USING MUTATE
murders <- mutate(murders,rate=total/population*100000)

#QUESTION 2
#USING MUTATE AND SORT
murders <- mutate(murders,rank= rank(-rate))

#QUESTION 3
#USING SELECT
select(murders,state,abb)

#QUESTION 4
#EXAMPLE
filter(murders, state== "New York")

#USING FILTER
filter(murders,rank <= 5)

#QUESTION 5
#EXAMPLE
no_florida <- filter(murders, state != "Florida")

#SOLUTION
no_south <- filter(murders,region!= "South")
nrow(no_south)

#QUESTION 6
#EXAMPLE
filter(murders, state %in% c("New York", "Texas"))

#SOLUTION
murders_nw <-filter(murders, region %in% c("Northeast","West"))

#QUESTION 7

my_states<-murders %>% 
  filter(rate< 1 & region %in% c("Northeast","West"))

##using select
select(my_states,state,rate,rank)
