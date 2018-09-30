#Factors
rollno=1:30
sname=paste('student',1:30,sep='')
gender=sample(c("M","F"),size=30,replace=T,prob=c(0.5,0.5))
grades= sample(c("A","B","C","D"),size=30,replace=T,prob=c(0.4,0.2,0.3,0.1))
df=data.frame(rollno,sname,gender,grades,stringsAsFactors = F)
df
summary(grades)
(gradesF=factor(grades))

table(grades)
table(gradesF)
class(gradesF)
(gradesF0 = factor(grades, ordered=T))
(gradesF01 = factor(grades, ordered=T, levels=c('B','C','A','D')))
summary(gradesF01)

(marks=ceiling(rnorm(30, mean=60, sd=5)))
(gender=factor(sample(c("M","F"),size=30,replace=T)))
(student1 = data.frame(marks,gradesF01))
boxplot(marks ~ gradesF01+gender,data=student1)
boxplot(marks)
summary(marks)
abline(h=summary(marks))
quantile(marks)
