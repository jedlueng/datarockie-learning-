## Download titanic package > install > titanic 

library(titanic)

#Use survive as Y
head(titanic_train)

##Delete Na (null)
titanic_train <-na.omit(titanic_train)
#Check how many rows 
nrow(titanic_train)


## Split Data 
set.seed(99)
n <- nrow(titanic_train)
id <- sample(1:n, size=n*0.7) ## 70% train 30% test 
train_data <- titanic_train[id,]
test_data <- titanic_train[-id,]


##Train Model 
glm(Survived ~ Pclass, data = train_data, family = "binomial")


## Test model 


## Accuracy 





