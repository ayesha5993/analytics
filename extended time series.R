# xts  - create object and export data

#create matrix : 1 col for 1 share
(stockprices = matrix(c(100,103, 105, 205, 210, 207, 530, 500, 535), ncol=3, byrow = F))
(cdtindex = c('25-09-2018', '27-09-2018', '28-09-2018'))
class(cdtindex)
#convert to date format
(dtindex = as.Date(cdtindex, format="%d-%m-%Y"))
#now we have index + matrix for xts object
install.packages("xts")
library(xts)

(ts_xts = xts(x=stockprices, order.by=dtindex))
#this series is not continuous but has missing dates
ts_xts
colnames(tx_xts)=c('SBI','ICICI','HDFC')
#-----
#matrix data extract
coredata(ts_xts)
#extract dates
index(ts_xts)


#write to csv file
write.zoo(ts_xts, "./data/zoodata.csv")
?matrix
#practice model
(stockprice1=matrix((100:185),ncol=3))
stockprice1
(cdtindex= c('01-09-2018'))
(dtindex = as.Date(cdtindex, format="%d-%m-%Y") + days(1:29))
dtindex
(ts_xts = xts(x=stockprice1, order.by=dtindex))
coredata(ts_xts)
index(ts_xts)

