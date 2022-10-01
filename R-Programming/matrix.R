## Matrix 
x <- 1:25 
#Find length 
length(x)
#Dimension 
dim(x) <- c(5,5)

print(x)

m1 <- matrix(1:25, ncol=5)
m2 <- matrix(1:6, ncol=3, nrow=2,byrow=T)


## element wise computation 
m2 + 100
m2 *4 
