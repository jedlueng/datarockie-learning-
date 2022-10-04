## Summary Statistics 
## Load Package 
library("dplyr")

setwd("~/Documents/GitHub/datarockie-learning-/Data-Transformation")

## Read CSV file
## strings as factors = if it is a character don't change it to factor 
imdb <- read.csv("imdb.csv",stringsAsFactors =  FALSE)

## summarize and group_by 
imdb %>%
  filter(rating != "") %>%
  group_by(rating) %>%
  summarise(mean_length = mean(length), 
            sd_length = sd(length),
            min_length = min(length),
            max_length = max(length),
            n = n())
