## loading dslabs
library(dslabs)
## calling murder data set
data(murders)
## structure of the murder set
str(murders)
## colum names Q2
names(murders)
## assesing the state abbreviation Q3
a<-murders$abb
## class of the object a
class(a)
## using square brackets Q4
b<-murders["abb"] 
murders[1:4,]
b
a==b
## a factor Q5
length(levels(murders$region))
class(murders$region)
## table function Q6
table(state.region)
