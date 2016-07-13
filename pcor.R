
#Pollutant: Correlation

#Data: specdata

# CORR

# download file n rbind

list.files ("specdata") 

files_full <- list.files ("specdata" , full.names = TRUE) 

str(files_full) 

str (lapply (files_full, read.csv))  

tmp <- lapply (files_full, read.csv) 

str (tmp) 

data<-do.call (rbind, tmp) 

str(data) 
is.data.frame(data) 

# subset to complete.cases

com<- data[complete.cases (data) ,]

str (com) 
is.data.frame(com)  
summary (com)  

# Compute cor for nitrate n sulfate 
# Subset com to smaller dfs
# Apply cor function


END
 
 




           