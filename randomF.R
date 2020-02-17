library(ggplot2) # Data visualization
library(readr) # CSV file I/O, e.g. the read_csv function
library(caret)
library(randomForest)
library(caTools)   #<- For stratified split
library(rpart.plot)
mushroomDF<-read.csv(file="C:/Users/rghim/Downloads/mushroom-classification/mushrooms.csv")
summary(mushroomDF)
z<-cbind.data.frame(Var=names(mushroomDF), Total_Class=sapply(mushroomDF,function(x){as.numeric(length(levels(x)))}))
z
mushroomDF$veil.type<-NULL
