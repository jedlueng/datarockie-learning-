#ggplot2
## library tidyverse 
library(tidyverse)

## First Plot 
#geom_point() = scatterplot 
ggplot(data= mtcars, mapping = aes(x = hp, y = mpg)) + 
  geom_point() +
  geom_smooth() + 
  geom_rug()
  


## Second plot 
ggplot(mtcars,aes(hp,mpg)) +
  geom_point(size = 3, col = "blue", alpha = 0.2)

## Third plot 
ggplot(mtcars, aes(hp)) + 
  geom_histogram(bins = 10,fill = "red", alpha = 0.2 )

## forth plot 
ggplot(mtcars, aes(hp)) + geom_boxplot()

p <- ggplot(mtcars,aes(hp))

## box plot by groups 
diamonds %>% 
  count(cut)

ggplot(diamonds,aes(cut)) + 
  geom_bar(fill = "#0366fc")


ggplot(diamonds, aes(cut,fill=cut)) + 
  geom_bar()


###SCATTER PLOT 
small_diamonds <- sample_n(diamonds, 5000)

ggplot(diamonds,aes(carat,price)) + 
  geom_point()



#### FACET : small multiples 
ggplot(small_diamonds, aes(carat,price))+
  geom_point()+
  geom_smooth(method = "lm", col="red")+
  theme_minimal() +
  labs(title = "Relationship between carat and price by color ",
       x = "Carat",
       y = "Price USD",
       caption = "Source:Diamonds from ggplot2 package")


#### Final Example 
ggplot(small_diamonds, aes(carat, price, col=cut))+ 
  geom_point(size = 3, alpha = 0.2) + 
  facet_wrap(~ color, ncol=2)
  


