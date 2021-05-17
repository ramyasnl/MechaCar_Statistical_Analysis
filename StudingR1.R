library(jsonlite)
demo_table2 <- fromJSON(txt='demo.json')
#To see all the headers
head(demo_table2)
ls()#This lists all the variables in R 
#to list the column values 
demo_table2$"lat"
#to access the 3rd column value in column "url"
demo_table2$"url"[3]
#to list all the items in the column "paint_color"
demo_table2$"paint_color"
library(tidyverse)
