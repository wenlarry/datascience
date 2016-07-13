
#Pollutant: Mean _ Complete Case

# Data : specdata 

# MEAN

# downlaod file  n rebind

list.files("specdata") 

files_full<-list.files(  "specdata" ,full.names= TRUE)

str (files_full)

str(lapply(files_full,read.csv)) 

tmp<- lapply(files_full, read.csv) 

str(tmp) 

data<- do.call (rbind, tmp) 

str(data) 
is.data.frame(data)

# Split data

dat2 <- split (data, data$ID)   

str (dat2)  
is.list(dat2) 
is.vector(dat2) 

# sapply


dat3 <- sapply(dat2, function    (x) {
colMeans (x [,      c("sulfate", "nitrate")], na.rm
          = TRUE)
})   


str(dat3)    
is.numeric(dat3) 
is.array(dat3) 
is.matrix(dat3)  

#test

# read head frame 23nitrate = 1.281

#read head frame 34 sulfate = 1.477


# COMPLETE CASE

str(dat2) 

# From dat2 - obtain the # of comple cases i.e. NAs from Summaries
# Test for (28 & 54)

cc1<-dat2 [[28]] 

summary(cc1) 

cc3 <- dat2 [[54]]

summary(cc3) 

# Find mean of nitrate
# mean of nitrate = 1.7 

str(data) 
colMeans (data, 2, na.rm = TRUE)

END 


                      
 


                 




        




 

    
  









  
 



 



                                                