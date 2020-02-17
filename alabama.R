library(VIM)
library(ggmap)
alabamaDF=read.csv("C:/Users/rghim/Desktop/data/Alabama AQI.csv")
summary(alabamaDF)
aggr(alabamaDF)
set.seed(20)
clusters<-kmeans(alabamaDF[,3],26)
alabamaDF$Year<-as.factor(clusters$cluster)
register_google(key="AIzaSyA79gOOneKv6xvCu9q-CdV7jjV-ZBQH9kU")
alabamamap<-get_map("Alabama",zoom=10,scale=2)
ggmap(alabamamap)+geom_point(aes(x=-86.902298,y=32.318230,colour=as.factor(Year)),data=alabamaDF)+
  ggtitle("Alabama AQI")

