## Load Package 
library("dplyr")

setwd("~/Documents/GitHub/datarockie-learning-/Data-Transformation")

## Read CSV file
## strings as factors = if it is a character don't change it to factor 
imdb <- read.csv("imdb.csv",stringsAsFactors =  FALSE)


## change name column to lowercase 
names(imdb) <- tolower(names(imdb))


##Write csv file (export result)
imdb_prep <- imdb %>% 
  select(movie_name, released_year = year, rating , length, score) %>% 
  filter(rating == "R" & released_year >2000)


## Export 
write.csv(imdb_prep, "imdb_prep.csv", row.names = FALSE) 
