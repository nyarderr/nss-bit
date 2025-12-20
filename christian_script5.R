#exercise 2.14

#calling the dslabs from the library
library(dslabs)

#loading the murders data set
data(murders)

#1.a calculating the per 100,000 murder rate for each state and naming it as murder_rate.
murder_rate <- murders$total/murders$population*100000

#1.b creating a logical operator of murder_rae lower than 1 and assigning it to low object.
low <- murder_rate < 1

#2 using  the function which to determine the indices of murder_rate  lower than 1
ind <- which(low)

#3 reporting the names of states with murder rate lower than 1
murders$state[ind]

#4 reporting the states in the Northeast with murder rate lower than 1 using &

  # checking the logicals of the states in the Northeast region
northeast <- murders$region == "Northeast"

# using the "&" to print the logicals of the  the states who are in the Northeast and at the same time less than 1
  # I assigned it to the object ind
ind <-low & northeast

# accessing the murders state and using the new object ind as [index] to report the states in Northeast with murder rate < 1  
murders$state[ind]

#5. computing the average of the murder rate of the state population.
#note: the murder rate was coomputed in Q1a and assigned to the object murder_rate
murder_rate
average_murder_rate <- mean(murder_rate)

#creating the logicals of the states with murder rate below the average murder rate and assigning it to ind
ind <- murder_rate < average_murder_rate

#finally, we report the states with the murder rate less than the average murder rate using murders$state and the new object ind.  
murders$state[ind]

#checking the number of states below the average murder rate.
length(murders$state[ind])

#6 matching the states with the following abbreviations. AK, MI, and IA
#firstly we find the index of the above states abbreviations using the match function.
ind <- match( c("AK","MI","IA"), murders$abb)

# finally, we now print the states with the above abbreviations using its index as assigned to the object ind.
murders$state[ind]

#7 using the %in% to print the states with the abbreviations  MA, ME, MI, MO, MU
#firstly, find the index of the above abbreviated states using the %in% and assigning it to ind.
ind <- c( "MA","ME", "MI", "MO","MU") %in% murders$abb

#8 reporting the entry that is not an actual abbreviation question 7 above.
# just add ! to the object ind and run it.
# it actually prints the opposite of the logicals
!ind
