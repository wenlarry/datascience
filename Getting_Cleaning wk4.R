
##1
#Data: Url below
#Apply strsplit to find value of the 123 element
#Result: 15

url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

file<-file.path(getwd(), "ss06hid.csv")

download.file(url, file, method="curl") 

dt<- read.csv(file) 

names(dt) 

strsplit(names(dt), "wgtp")[123]


## 2
# Data: Urls of global GDP
# Use of dplyr n gsub
# gsub to fix characters
# as.numeric to change character df to numeric
# Obtain mean of GDP of the ranked conutries
# Result: 3777652.4 (mean)

url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"

file<-file.path(getwd(), "GDP.csv") 

download.file(url, file, method= "curl") 

gdp<-read.csv(file, skip=4, nrows=215, stringsAsFactors = FALSE) 

gdp<- select(gdp,-(X.5:X.9)) 

gdp <- rename(
        gdp ,
        ctycode = X,
        gdprank = X.1,
        ctyname = X.3,
        gdpnum = X.4
) 

gdp<-as.numeric(gsub(",","",gdp$gdpnum)) 

mean(gdp, na.rm= TRUE) 


## 3
# Data: Urls of global gdp (above)
# Use of regular expression with grepl
# Obtain count of countries with "United"
# Result 3 (TRUE) 

United<-grepl("^United",gdp$ctyname) 

summary(United) 


## 4
# Data: Urls of global gdp (above)
# Data: educational data from the same series (below)
# Use Plyr, dplyr and grep
# Join both datasets
# Grep to find values (fiscal year end June)
# Obtain count of countries with fiscal yyeae end June
# Result 13 countries

url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"

file<-file.path(getwd(),"EDSTATS_Country.csv")

download.file(url,file,method="curl") 

ed<-read.csv(file, stringsAsFactors= FALSE) 

ed<- rename(ed, ctycode= CountryCode) 

consol<-arrange(join(gdp,ed),ctycode) 

fy.june<-grep('Fiscal year end: June', consol$Special.Notes) 
print(fy.june) 


## 5
# Data: AMZN stock prices dowloaded (see below)
# Use quantmod, lubridate 
# Obtain values collected in 2012 and on
# Mondays
# Result 250 (2012) & 47 (Mondays) 

amzn<-getSymbols("AMZN", auto.assign = FALSE) 

sampleTimes=index(amzn) 

datelist<- ymd(sampleTimes) 

y2012<-length(which(year(datelist)==2012)) 

print(y2012) 

wdays<- length(which(year(datelist)== 2012 &
                weekdays(datelist)=="Monday"))

print(wdays) 

END




