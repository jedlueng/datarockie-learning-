#Set working directory
setwd("~/Documents/GitHub/datarockie-learning-/Data-visualization")


#Get tidyverse 
library(tidyverse)

#Basic plot (base R)
par(mar=c(5.1, 4.1, 4.1, 2.1), mgp=c(3, 1, 0), las=0)

#plot histrogram 
hist(mtcars$mpg)
hist(mtcars$hp)

#Analyzing horse power 
hist(mtcars$hp)
mean(mtcars$hp) 
median(mtcars$hp)

#changing numeric to factor 
str(mtcars)
mtcars$am <- factor(mtcars$am,
                    levels = c(0,1),
                    labels = c("Auto","Manual"))

str(mtcars)


#Bar plot one qualitative variable 
barplot(table(mtcars$am))

##box plot 
boxplot(mtcars$hp)
#fivenum to check numbers min max lower upper quartile
fivenum(mtcars$hp)

##explaining fivenum 
min(mtcars$hp)
quantile(mtcars$hp, probs = c(.25,.5,.75))
max(mtcars$hp)

##whisker calculation 
Q3 <- quantile(mtcars$hp, probs = .75)
Q1 <- quantile(mtcars$hp, probs = .25)
IQR_hp <- Q3 - Q1 
print(IQR_hp)

max <- Q3+  1.5 * IQR_hp
min <- Q1 + 1.5 * IQR_hp 

#summary of the box plot 
boxplot.stats(mtcars$hp,coef = 1.5)

## filter out outliers (No outliers)
mtcars_no_out <- mtcars %>% 
  filter(hp < 335)

boxplot(mtcars_no_out$hp)


## Boxplot 2 variables side by side 
## Quanlitative x Quantitative 
data(mtcars)
mtcars$am <- factor(mtcars$am,
                    levels = c(0,1),
                    labels = c("Auto","Manual"))

boxplot(mpg ~ am, data = mtcars,
        col = c("gold","salmon"))

# Scatterplot 
plot(mtcars$hp,mtcars$mpg, 
     pch = 16, 
     col = "blue" ,
     main = "my First scatter plot", 
     xlab = "Hourse Power", 
     ylab = "Miles Per Gallon")





