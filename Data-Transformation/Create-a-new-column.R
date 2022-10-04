

## Load Package 
library("dplyr")

setwd("~/Documents/GitHub/datarockie-learning-/Data-Transformation")

## Read CSV file
## strings as factors = if it is a character don't change it to factor 
imdb <- read.csv("imdb.csv",stringsAsFactors =  FALSE)


## change name column to lowercase 
names(imdb) <- tolower(names(imdb))


## Create a new columns 
imdb %>% 
  mutate(score_group = if_else(score >= 9, "High Rating","Low Rating"),
                              length_group = if_else(length >= 123, "Long Film", "Short Film"))


## Create an updated score 
imdb %>% 
  select(movie_name,score) %>%
  mutate(score = score + 0.1) %>%
  head(10)


