library(ggpubr)
df<-PlantGrowth
ggboxplot(df,x="group",y="weight")
ggline(df,x="group",y="weight",add=c("mean-se","filter"), order = c("ctrl","trt1","trt2"),xlab = "treatment",ylab = "weight")
model<-aov(PlantGrowth$weight ~PlantGrowth$group ,data=df)
summary(model)
TukeyHSD(model)