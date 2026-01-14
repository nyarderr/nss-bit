##EXERCISE

#loading dslabs and the murders data set
#QUESTION 1

library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

#plotting (population_in_millions, total_gun_murders)

with(murders,plot(population_in_millions, total_gun_murders))

#using log10

population_log <- log10(population_in_millions)
murders_log <- log10(total_gun_murders)

with(plot(population_log,murders_log)) 

#QUESTION 2
##creating a histogram of the state populations

x <- with(murders,population_in_millions)
hist(x)           

murders$state[which.max(x)]

#QUESTION 3
##generating boxplots of the state populations by region.

murders$state <- with(murders, total / population * 100000)
boxplot(state~region, data = murders)
