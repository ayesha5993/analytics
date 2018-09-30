#data analysis using dplyr

install.packages("dplyr")
library(dplyr)
?mtcars
dplyr::filter(mtcars, mpg > 25 & am==1)
filter(mtcars, mpg > 25 & am==1)
mtcars %>% filter(mpg > 25 & am==1) %>%arrange(wt) %>% summarise(n())
mtcars %>% filter(mpg > 25 & am==1) %>% arrange(wt) %>% count()
count(mtcars)
mtcars %>% group_by(am) %>% summarise(mean(mpg))
mtcars %>% group_by(wt,gear) %>% summarise(mean(mpg))
mtcars %>% group_by(wt,gear,vs) %>% summarise(mean(mpg))
mtcars %>% group_by(wt,gear,vs,hp) %>% summarise(mean(mpg))

#filter
filter(mtcars,cyl==8)
filter(mtcars, cyl<6)

#Multiple arguments are equivalent to and
filter(mtcars,cyl<6,vs==1)
count(mtcars)
#Combined Plots
#plot,histogram,pie,boxplot,linechart,correlation plot
#plot
women
plot(women, type='p',pch=19,col='red')
plot(women, type='l')
plot(women, type='b')
plot(women,type='b', pch=18,lty=2,col=2)
plot(women)
abline(lm(women$weight~women$height),col='red',lty=2,lwd=4)
#draw lines on plot for number summary
summary(women)
quantile(women$height)
quantile(women$height,seq(0.1,0.1))
quantile(women$height,seq(0.1,0.01))
stem(women$height)
#histogram
hist(women$height)
hist(women$height, breaks=10)
hist(women$height, breaks=5,col=1:5)
#histogram2
(x=rnorm(100,50,10))
hist(x)
hist(x,freq=F,col=1:5)
lines(density(x))
#density plot:shape of data
plot(density(x), col='red')

#pie
gender
table(gender)
pie(table(gender))
x=c(10,20,40,50)
pie(x) 
xlabels =c('A','B','C','D')
x/sum(x)
(labels2=paste(xlabels, round(x/sum(x),2)*100,sep='-'))
pie(x,labels=labels2)
#correlation plot
pairs(women)
cor(women$height,women$weight)
cov(women$height,women$weight)
head(mtcars)
?mtcars
cor(mtcars)
names(mtcars)
pairs(mtcars)
pairs(mtcars[1:4])
options(digits=4)
pairs(mtcars[c('mpg','wt','hp')])

#Frequency distribution

#Discrete cat data
(attend=c('A','p','p','A','P','A'))

#Continuous data
set.seed(1234)
x3=runif(100,0,150) #0 to 150 marks range, 100 values
x3
x3= ceiling(x3) #round to higher value
x3
range(x3)
breaks=seq(0,150,by=15)
breaks
length(breaks)
#x3[1]
x3.cut=cut(x3,breaks,labels=letters[1:10])
x3.cut
