##Exercise
##Question 1
library(dslabs)
data(murders)
##using the str
str(murders)
##Question 2
names(murders)
##Question 3
a<-murders$abb
class(a)
##Question 4
b<-murders[,2]
a==b
##Question 5
class(murders$region)
##Determining the number of regions
length(level(murders$regions))
##Question 6
table(state.region)
