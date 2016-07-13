## Coding of data with apply functions
## R Progamming Course Work


library(datasets)
data(iris)
iris
with(iris,tapply(Sepal.Length,Species,mean))

apply(iris[,1:4],2,mean)

library(datasets)
data(mtcars)

mtcars

tapply(mtcars$mpg,mtcars$cyl,mean)


split(mtcars,mtcars$c  

mean(mtcars$mpg,mtcars$cyl)

apply(mtcars,2,mean)


lapply(mtcars,mean)

sapply(split(mtcars$mpg,mtcars$cyl), mean)

apply(mtcars,2,max)


with  (mtcars,list (cyl,hp))

str (mtcars) 

mtcars [,c("cyl","hp")]


split(mtcars,mtcars$cyl)

with( mtcars,tapply(hp, cyl, mean) )

sapply  ( mtcars[,c(2,4)],unique)

## END





















