## EXERCISE

# loading the library and data

library(dslabs)
data(murders)

## QUESTION 1

murder_rate <- murders$total/murders$population*100000

low <- murder_rate < 1

## QUESTION 2

ind <- which(murder_rate < 1)

## QUESTION 3

murders$state[ind]

## QUESTION 4

northeast <- murders$region == "northeast"

ind <- low & northeast

##QUESTION 5

average_murder_rate <- mean(murder_rate)

## QUESTION 6

ind <- match( c("AK","MI","IA"), murders$abb)

murders$state[ind]

## QUESTION 7

c("MA", "ME", "MI", "MO", "MU") %in% murders$abb

## QUESTION 8

!ind
