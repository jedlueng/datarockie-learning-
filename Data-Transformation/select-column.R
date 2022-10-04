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


#Select column 
select(imdb,"MOVIE_NAME","RATING")
#select column 1 and 5 
select(imdb,1,5)


## Change column name 
select(imdb, movie_name = MOVIE_NAME, released_year = YEAR  )


## pipe operator 
##Same as this select(imdb, movie_name = MOVIE_NAME, released_year = YEAR  )
## But putting imdb out 
head(imdb)
imdb %>% 
    select(movie_name = MOVIE_NAME, released_year = YEAR) %>%
    head(10)



## filter data 
filter(imdb, SCORE >= 9.0)

#or 

imdb %>% filter(SCORE >= 9.0)


## names (look at column name)
names(imdb)

## change name column to lowercase 
names(imdb) <- tolower(names(imdb))


## Using pipe to over pipe 
imdb %>% 
  select(movie_name, year,score)%>%
  filter(score >= 9 & year >2000)

## PIPE | = or operator 
imdb %>% 
  select(movie_name, year,score) %>%
  filter(score == 8.8| score == 8.3| score == 9)


## In operator(shortcut)
imdb %>% 
  select(move_name,length,score) %>% 
  filter(score %in% c(8.3,8.8,9.0))

