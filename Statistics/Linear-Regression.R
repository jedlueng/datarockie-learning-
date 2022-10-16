##Correlation
## Using mtcars 
#Column mpg and hp (correlation)
cor(mtcars$mpg,mtcars$hp)
cor(mtcars$mpg,mtcars$wt)

#scatter plot 
plot(mtcars$wt, mtcars$mpg, pch =16)
plot(mtcars$wt, mtcars$hp, pch =16)


#correlation matrix 
cor(mtcars[, c("mpg","wt","hp")])

## dplyr (tidyverse)
library(dplyr)
##showing table of correlation 
corMat <- mtcars %>% 
  select(mpg,wt,hp,am) %>%
  cor()

## compute correlation (r) and sig test 
cor(mtcars$hp, mtcars$mpg)
cor.test(mtcars$hp, mtcars$mpg)


##Linear Regression
## mpg = f(hp)
lmfit <- lm(mpg ~ hp, data = mtcars)


##Summary statistics 
summary(lmfit)

## prediction
lmfit$coefficients[[1]] +lmfit$coefficients[2]*200


## Predict mpg of these cars 
new_cars <- data.frame( 
  hp = c(250,320,400,410,450))


## predict() 
new_cars$hp_pred <- predict(lmfit,newdata = new_cars)

##to_delete 
new_cars$hp_pred <- NULL


##Do not predict beyond your scope 




## Root Mean Squared Error (rmse)
## Multiple Linear Regression 
## mpg = f(hp,wt,am)
## mpg = intercept + b0*hp + b1*wt + b2*am 
lmFit_V2 <- lm(mpg ~ hp + wt + am,data = mtcars)

#only coefs
coefs <- coef(lmFit_V2)
#linear regression by yourself 
coefs[[1]] + coefs[[2]]*200 + coefs[[3]]*3.5 + coefs[[4]]*1


## Build Full Model 
## all varialbes 
lmFit_Full <- lm(mpg ~. , data = mtcars)
mtcars$predicted <- predict(lmFit_Full)

## RMSE 
squared_error <- (mtcars$mpg - mtcars$predicted) **2
rmse <- sqrt(mean(squared_error))


##Split Data 
## randomly split 
set.seed(42)
sample(1:10, 3)


##80/20 
set.seed(42)
n <- nrow(mtcars)
id <- sample(1:n, size= n*0.8)
train_data <- mtcars[id,]
test_data <- mtcars[-id,]

##Train Model 
model1 <- lm(mpg ~ hp +wt, data = train_data)
p_train <- predict(model1)
error_train <- train_data$mpg - p_train 
(rmse_train <-sqrt(mean(error_train **2)))

##Test Model 
p_test <- predict(model1, newdata = test_data)
error_test <- test_data$mpg - p_test
(rmse_test <- sqrt(mean(error_test**2)))

##Print Resutl 
cat("RMSE Train", rmse_train,
    "\nRMSE TEST:", rmse_test)









