## Load Package 
library("dplyr")

setwd("~/Documents/GitHub/datarockie-learning-/Data-Transformation")

## Read CSV file
## strings as factors = if it is a character don't change it to factor 
imdb <- read.csv("imdb.csv",stringsAsFactors =  FALSE)


## change name column to lowercase 
names(imdb) <- tolower(names(imdb))
##arrange data 
imdb %>%
  arrange(length) %>%
  head(10)

##Arrange descending 
imdb %>% 
  arrange(desc(length)) %>%
  head(10)

imdb %>% 
  arrange(rating , desc(length))


## summarize and group_by 
imdb %>%
  summarise(mean_length = mean(length))
