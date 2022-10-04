## Join data
## Summary Statistics 
## Load Package 
library("dplyr")

setwd("~/Documents/GitHub/datarockie-learning-/Data-Transformation")

## Read CSV file
## strings as factors = if it is a character don't change it to factor 
imdb <- read.csv("imdb.csv",stringsAsFactors =  FALSE)

favourite_films <- data.frame(id = c(5,10,25,30,98))

favourite_films %>% 
  inner_join(imdb, by = c("id" = "NO") )

