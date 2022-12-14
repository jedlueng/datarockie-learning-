## Install data transformation package 
install.packages("dplyr")


## Load Package 
library("dplyr")

setwd("~/Documents/GitHub/datarockie-learning-/Data-Transformation")

## Read CSV file
## strings as factors = if it is a character don't change it to factor 
imdb <- read.csv("imdb.csv",stringsAsFactors =  FALSE)


## review data structure 
glimpse(imdb)

## print head and tail 
head(imdb,10)
tail(imdb,10)
