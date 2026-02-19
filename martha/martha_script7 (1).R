##Exercise
##Question one
library(dplyr)
library(dslabs)
data(murders)
##using mutate
murders <- mutate(murders,rate= total/population*100000)

##Question Two
murders <- mutate(murders,rank=rank(-rate))

##Question Three
select(murders, state, abb)

##Question four
filter(murders,rank<=5)

##Question five
no_florida <- filter(murders, state != "Florida")

no_south<-filter(murders,region!="South")
nrow(no_south)

##Question six
filter(murders, state %in% c("New York", "Texas"))
murders_nw<-filter(murders,region %in% c("Northeast","West"))

##Question seven
my_states<-murders %>% 
  filter(rate< 1 & region %in% c("Northeast","West"))
##using select
select(my_states,state,rate,rank)




