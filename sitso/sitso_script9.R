#EXERCISE 4.6

#QUESTION 1

mutate(murders, rate = total / population * 100000,
       rank = rank(-rate)) %>%
  select(state, rate, rank)

#QUESTION 2

murders <- mutate(murders,rate=total/population*100000)
data(murders)

my_states <- murders %>%
  mutate(rate=total/population*100000,
         rank= rank(-rate)
         ) %>% 
  filter(region %in% c("Northeast","West"),
         rate < 1
         ) %>% 
  select(state,rate,rank)



