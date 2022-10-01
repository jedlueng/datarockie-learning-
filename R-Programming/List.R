## list 

my_name <- "Toy"
my_friends <- c("Wan", "Ink","Zue")
m1 <- matrix(1:25,ncol=5)
R_is_cool <- TRUE

my_list <- list(item1 = my_name,
                items2 =  my_friends,
                items3 = m1,
                items4 =R_is_cool)

print(my_list)

#Access list 
my_list$items3
