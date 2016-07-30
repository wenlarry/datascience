#Read fixed width text file
# Use pkg readr



x <-
        read_fwf(file = "http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for",
                 skip = 4,
                 fwf_widths(c(12, 7, 4, 9, 4, 9, 4, 9, 4)))

head(x) 

sum(x[,4]) 
