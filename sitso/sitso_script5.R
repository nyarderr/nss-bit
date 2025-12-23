# EXERCISE

#QUESTION 1

##loading the library and data
library(dslabs)
data(murders)

murder_rate <- murders$total/murders$population * 100000
low <- murder_rate < 1
low

#QUESTION 2
## determining the indices
ind<-which(low)
ind

#QUESTION 3
murders$state[low]
ind

#QUESTION 4
north <- murders$region == "Northeast"
save <-  low 
ind <- north & save
murders$state[ind]

#QUESTION 5
mean(murder_rate)
average <- mean(murder_rate)
average
ind <- murder_rate < average
murders$state[ind]
length(murders$state[ind])

#QUESTION 6
ind <- match(c("AK", "MI", "IA"), murders$abb)
ind
murders$state[ind]

#QUESTION 7
ind <-  c("MA", "ME", "MI", "MO", "MU") %in% murders$abb
murders$state[ind]

#QUESTION 8
!ind
