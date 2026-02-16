##EXERCISE 4.9

install.packages("NHANES")

#loading the data

library(NHANES)
data(NHANES)
library(tidyverse)


#QUESTION 1
#using the NHANES data set

ref <- NHANES %>% 
  #filtering NA,gender and agedecade
  filter(Gender == "female",
         AgeDecade == " 20-29") %>% 
  #using summarize to find the mean and standard deviation
  summarize(average=mean(BPSysAve, na.rm= TRUE),
            standard_deviation=sd(BPSysAve, na.rm= TRUE)
            )

#QUESTION 2

#using a pipe and the pull function
ref_avg <- ref %>%
  pull(average)


#QUESTION 3

#using min and max
NHANES %>% 
  filter(Gender == "female",
         AgeDecade == " 20-29") %>% 
summarize(minimum=min(BPSysAve, na.rm= TRUE),
          maximum=max(BPSysAve, na.rm= TRUE))

#QUESTION 4

NHANES %>% 
  filter(Gender == "female") %>% 
  group_by(AgeDecade) %>% 
  summarize(average=mean(BPSysAve, na.rm = TRUE),
            standard_deviation=sd(BPSysAve, na.rm= TRUE))

#QUESTION 5

NHANES %>% 
  filter(Gender == "male") %>% 
  group_by(AgeDecade) %>% 
  summarize(average=mean(BPSysAve, na.rm = TRUE),
            standard_deviation=sd(BPSysAve, na.rm= TRUE))

#QUESTION 6
#using group_by(AgeDecade, Gender)

NHANES %>% 
  group_by(AgeDecade, Gender) %>% 
  summarize(
    average=mean(BPSysAve, na.rm = TRUE),
    standard_deviation=sd(BPSysAve, na.rm= TRUE))
            
            
#QUESTION 7

NHANES %>% 
  filter(Gender == "male",
         Age >= 39 & Age <= 48) %>% 
  group_by(Race1) %>% 
  summarise(avg_systolic = mean(BPSysAve, na.rm =TRUE)) %>% 
  arrange(avg_systolic)
            
















