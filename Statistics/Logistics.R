## Logistics Regression 

library(dplyr)
mtcars %>% head() 

str(mtcars)

##convert am to factor 
mtcars$am <- factor(mtcars$am,
                    levels = c(0,1),
                    labels = c("Auto", "Manual"))


class(mtcars$am)
table(mtcars$am)


## train model
logit_model <- glm(am ~mpg, data = train_data)
p_train <- predict(logit_model,type="response") ## Probability
train_data$pred <- if_else(p_train >= 0.5,"Manual","Auto")
mean(train_data$am == train_data$pred)

## test model 
p_test <- predict(logit_model,type="response") ## Probability
train_data$pred <- if_else(p_test >= 0.5,"Manual","Auto")
mean(test_data$am == test_data$pred)



