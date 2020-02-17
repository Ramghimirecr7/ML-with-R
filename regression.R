houseDF<-read.csv(file = 'C:/Users/rghim/Downloads/housing/housing.csv')
y<-houseDF[,9]
x3<-houseDF[,3]
x4<-houseDF[,4]
model1<-lm(y~x3+x4,data=houseDF)
print(model1)
