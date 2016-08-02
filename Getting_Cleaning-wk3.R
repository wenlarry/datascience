##
# data American Community Survey
# import with RStudio (Import Database)
# Use dplyr to subset (V11 = ACR; V12 = AGS) 

af2<-select(af,V11, V12)  

# Get first 3 values thru df 21
# Use ACR=3 and AGS = 6
# First 3 values = 125, 238, 262

af21<-select(af, - (V1:V10) ) 

##
# Data: Below url (.jpg)
# Use jpeg pkg
# Read from Studio  
# download.file- use mode"wb"
# parameter : native= TRUE given

url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"    

download.file(url, "jeff", mode="wb")  

img <- readJPEG("jeff", native= TRUE) 

# quantile - results 30% (-15259159) ;
#           80% (- 10575416)

quantile(img, probs=c(0.3,0.8) )       


## 
# Data : GDP & Country(WoeldBank)
# Import with RStudio (Import Dataset)
# Use dplyr n plyr

gdp1<-select( gdp, - (V6:V10)) 

cty1<-select(cry, - ( V4:V31)) 

con<- arrange(join(gdp1, cty1), V1) 

con1<-select(con, - V3) 

# con2 shows 190 matches with 13th country (ranked 178)
# - St Kitts & Nevis
# Descending Order


con2<-arrange( con1,desc(V2) )

# # 

#Data: GDP & Country (World Bank)
#Import with RStudio (Import Dataset) 
# Use dplyr n plyr
# From mergeData (Col V2.x & V3.y) ;
# can compute the means of 'High Income (OECD & Non OECD) 


mergeData=merge(gdp1, cty1, by.x="V1", by.y="V1", all = TRUE) 

md2<-transform(mergeData, V2.x = as.numeric(V2. x ) )

md3<- md2 %>% mutate(V2.xmean= mean(V2.x,
                             na.rm = TRUE))

##
#
#Data: GDP & Country (World Bank) 
#Import with Rstudio (Import Dataset)
#Use dplyr, plyr  n Hmisc
#

md4<- md2%>% mutate(V2.x=cut2(V2.x, g=5)) 

END