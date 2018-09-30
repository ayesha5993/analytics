#Data Structures in R

#Vectors----
x=1:10  #create sequence of numbers from 1 to 10
x
x1<= 1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)

(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b = c('A',"Ayesha","4"))
class(X3b)
(x4=c(T,FALSE,TRUE,T,F))
class(x4)
x5=c(3L,5L)
class(x5)
(x5b= c(1,'a',T,4L))
class(x5b)

#access elements
(x6= seq(0,100,by=3))
methods(class='numeric')
?seq
#[1] 0 2 4 6 8 10
ls() #variables in my environment
x6
length(x6)
x6[20]
x6[3] #access third element
#[1] 4
x6[c(2,4)] #acess second and fourth element

x6[-1] #access all but first element
x6[-c(1:10)]
x6[c(2,-4)] #cannot mix positive and negative integers
#Error in x[c(2,-4)]:only o's may be mixed with negative subscripts
x6[c(2.4,3.54)] #real numbers are truncated to integers
x6
length(x6)
x6[-(length(x6)-1)]
(x7=c(x6,x2))
#modify
x6
sort(x6)
sort(x6[-c(1,2)])
sort(x6,decreasing=T)
rev(x6)
seq(-3,10,by=.2)
x6[-c(1:12)]
(x=-3:2)
#[1] -3 -2 -1 0 1 2
x[2] <- 10; x #modify 2nd element
x
x[x<0]=5;x #modify elements less than 0
x
x<0

x[x<=1& x>=-1]=100;x

x=x[1:4];x #truncate x to first 4 elements
#[1] 5 0 5 0

#delete vector
(x=seq(1,5,length.out = 10))

x=NULL
x
x[4]
#NULL

(X=rnorm(100))
(x1= rnorm(10000000,mean=50, sd=5))
plot(density(x1))
mean(x1)
abline(v=mean(x1),h=0.04)

#Matrix----

100:111

(m1 = matrix(1:12,nrow=4))
(m2 = matrix(1:12, ncol=3, byrow=T)) 
x=101:124 
length(x)
matrix(x, ncol=6)  
class(m1)  
attributes(m1)  
dim(m1)  
m1

#access elements of matrix
m1[1,2:3]
m1[c(1,3),]  
m1[,-c(1,3)]  
 m1 
 paste("C","D",sep="-") 
 paste("C",1:100,sep='-')
 (colnames=paste('C', 1:3, sep='-')) 
 m1
 (rownames= paste('R',1:3, sep='-')) 
 m2[-2]# exclude 2nd row 
  m2
  m2[1:5]#matrix is like vector
    
  m2  
  m2[c(TRUE,F,T,F),c(2,3)]  #logical indexing
  m2[m2>5 & m2<10]
    
  m1:m2  
  
m1[1:2,1:2]
     
m1[c('R1'),c('C1', 'C3')]   
m1[c(T,T,F,F)]
m1[m1>10] =99    
rbind(m2, c(50,60,70))#additional row is added
m2
cbind(m2,c(55,65,75,85))  #additional comlumn is added   
  m2   
  #row and column wise summary
  m1
  colSums(m1);rowSums(m1)
  colMeans(m1);rowMeans(m1)   
  t(m1) #transpose
  m1
  sweep(m1,MARGIN=1, STATS=c(2,3,4,5), FUN="+") #rowwise
  sweep(m1,MARGIN=2, STATS=c(2,3,4), FUN="*") #colwise
  ?sweep
  #addmargins
  addmargins(m1,margin=1,sum) #colwise function
  addmargins(m1,c(1,2),mean) #row and colwise function1
  addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd))) #row & colwise function
  
  #DATA FRAME
  
#create vectors to be combined into DF
(rollno = 1:30)
 (sname=paste('student',1:30,sep='')) 
 (gender = sample(c('M','F'),size=30, replace=T, prob=c(.7,.3))) 
  (marks= floor(rnorm(30,mean=50,sd=10)))
  (marks2= ceiling(rnorm(30,40,5)))
( course=sample (c("BBA","MBA"), size =30,replace =T,prob = c(0.5,0.5)))
  rollno; sname; gender;
  marks; marks2; course;
  g=sample(c("M","F"), size=20, replace=T, prob=c(0.7,0.3))

set.seed(1234) #to get the same pattern
  
  #create df
df= data.frame(rollno,sname,gender,marks,marks2,course,stringsAsFactors= F)
  str(df) #structure of DF
  head(df) #top 6 rows
  head(df,n=3)# top 3 rows
#Arrays----

#Factors----

#Lists----