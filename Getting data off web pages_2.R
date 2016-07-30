#Getting data off webpages
#readLines


con= url("http://biostat.jhsph.edu/~jleek/contact.html") 

htmlCode =  readLines(con) 

close(con) 



c(nchar(htmlCode[10]),
  nchar(htmlCode[20]),
  nchar(htmlCode[30]),
  nchar(htmlCode[100]))

