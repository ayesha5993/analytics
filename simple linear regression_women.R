fit=lm(weight~height,data=women)
summary(fit)
#linear model between y and x of this data set
#linear regression
range(women)
(ndata=data.frame(height=c(58.5,60.7)))
(p=predict(fit,newdata=ndata))
cbind(ndata,p)
plot(fit)

