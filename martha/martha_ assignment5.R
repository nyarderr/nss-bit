##Exercise
##1 loading the library and data
library(dslabs)
data(murders)
murders_rate <- murders$total / murders$population * 100000
low<-murders_rate < 1
low
##Q2
## determining the indices
ind<-which(low)
ind
##Q3
murders$state[low]
ind
##Q4
NW <- murders$region == "Northeast"
safe <- low
ind <- safe & NW
murders$state[ind]
##Q5
mean(murder_rate)
average<-mean(murder_rate)
average
murder_rate< average
ind<- murders_rate<average
murders$state[ind]
length(murders$state[ind])
SUM(murders$state[ind])
##Q6
ind <- match(c("AK", "MI", "IA"),  murders$abb)
ind
murders$state[ind]
##Q7
ind<-c("MA", "ME", "MI","MO","MU") %in% murders$abb
murders$state[ind]

##Q8
!ind
ind

