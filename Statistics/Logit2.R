## Logistic Regression Example 

##Making data 
happiness <- c(10,8,9,7,8,5,9,6,8,7,1,1,3,1,4,5,6,3,2,0)

divorce <- c(0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1)

##Making data frame 
df <- data.frame(happiness,divorce)

## Fit logistic Regression Full dataset 
model <- glm(divorce ~ happiness,data = df, family = "binomial")

##Finding P value 
summary(model)


##Predict and Evaluate Model 
#Create a new column 
#Response = probability
df$prob_divorce <-predict(model, type = "response")
df$pred_divorce <- ifelse(df$prob_divorce >= 0.5,1,0)

##Confusion Matrix 
confusion_matrix <- table(df$pred_divorce,df$divorce, dnn = c("Predicted","Actual"))


##Model Evaluation 
##Indexing 
confusion_matrix[1,1]
confusion_matrix[1,2]
confusion_matrix[2,1]
confusion_matrix[2,2]


##Accuracy 
cat("Accuracy:",confusion_matrix[1,1] + confusion_matrix[2,2]/sum(confusion_matrix))
cat("Precision:",confusion_matrix[2,1]/(confusion_matrix[2,1]+confusion_matrix[2,2]))
cat("Recall:", confusion_matrix[2,2]/(confusion_matrix[1,2] + confusion_matrix[2,2]))


##F1 
cat("F1:", 2* ((0.9 * 0.9)/ (0.9 + 0.9)))



