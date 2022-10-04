## Load Package 
library("dplyr")

setwd("~/Documents/GitHub/datarockie-learning-/Data-Transformation")

## Read CSV file
## strings as factors = if it is a character don't change it to factor 
imdb <- read.csv("imdb.csv",stringsAsFactors =  FALSE)


## change name column to lowercase 
names(imdb) <- tolower(names(imdb))


##Filter string columns 
imdb %>% 
  select(movie_name,genre,rating) %>%
  filter(rating == "R")

#grepl = search pattern 
#filter movie with king name 
imdb %>% 
  select(movie_name) %>% 
  filter(grepl("king", imdb$movie_name))

