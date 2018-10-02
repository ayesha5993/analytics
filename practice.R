#Practice Exercise-XIMB
#Create a 100 row DF with following variables
#gender,spl,age,experience,grade,placement
library(dplyr)
gender = sample(c("M","F"),size=100,prob=c(0.5,0.5),replace=T)
gender
spl = sample(c("Marketing","Finance","HR"),size=100,prob=c(0.4,0.3,0.3),replace=T)
spl
age = sample(seq(21,30,by=1,size=100))
age
exp = sample(0:3,size=100,replace=T)
exp
grade = sample(c("A","B","C","D"),size=100,c(0.13,0.37,0.25,0.25),replace=T)
grade
placement=sample(c(T,F),size=100,prob=c(0.7,0.3),replace=T)
placement
students1=data.frame(gender,spl,age,exp,grade,placement,stringsAsFactors = T) #df is data frame
students1
head(students1)
str(students1)
summary(students1)
students1%>%filter(spl!='Marketing')%>%group_by(spl)%>%summarise(mean(age),mean(exp))
#draw plots
plot(students1$gender,students1$spl)
hist(students1$age)
t1=table(students1$gender,students1$age)
barplot(t1)
boxplot(students1$age)
pie(table(students1$gender))
pie(table(students1$spl))
pie(table(students1$age))
pie(table(students1$exp))
table(students1$gender,students1$placement,students1$spl)
names(students1)
students1%>%group_by(gender)%>%summarise(mean(exp),max(exp),mean(age))
#write csv file
write.csv(students1,'./data/ximb.csv')
students1=read.csv('./data/ximb.csv')
head(students1)


#clustering
km3=kmeans(students1[,c('age','exp')],centers=3)
km3
km3$centers
plot(students1[,c('age','exp')],col=km3$cluster)
 #decision tree
library(rpart)
library(rpart.plot)
str(students1)
tree=rpart(placement~. , data=students1)
rpart.plot(tree,nn=T,cex=0.8) #nn=node number,cex=size of tree
tree
prune(tree,cp=0.025)
ndata=sample_n(students1,3)
ndata
predict(tree,newdata = ndata,type='class')
predict(tree,newdata=ndata,type='prob')
printcp(tree,newdata=ndata,type='prob')
#logistic regression
logitmodel1=glm(placement~.,data=students1,family='binomial')
summary(logitmodel1)
logitmodel1a=glm(placement~age, data=students1,family='binomial')
summary(logitmodel1a)
logitmodel1b=glm(placement~gender, data=students1,family='binomial')
summary(logitmodel1b)

#linear regression
linear1=lm(age~.,data=students1)
summary(linear1)
