## Dataframe 

friends <- c("Wan","Ink", "Ana", "Bee", "Top")

ages <- c(26,27,32,31,28)

locations <- c("New York ", "London", "London", "Tokyo", "Manchester")


movie_lover <- c(TRUE,TRUE,FALSE,TRUE,TRUE)

data.frame(friends,ages,locations,movie_lover)


#Access more than 30 years of age 

ages[ages > 30]


