library(car)
library(lattice)
hist(iris[,1])
qqplot(iris$Sepal.Length,iris$Petal.Length)
histogram(~iris$Petal.Width|iris$Species)
bwplot(iris$Species~iris$Petal.Length)

