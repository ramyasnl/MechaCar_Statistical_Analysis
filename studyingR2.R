library(tidyverse)
demo_table <-  read.csv("demo.csv",stringsAsFactors = F,check.names = F)
head(demo_table)
#Inserting Mileage_per_Year,IsActive in the same demo_table DF
demo_table1 <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) #add columns to original data frame
head(demo_table1)
#using summarise()
#summarise(df, variable_name=condition) - `df`: Dataset used to construct the summary statistics 
#- `variable_name=condition`: Formula to create the new variable , refer https://www.guru99.com/r-aggregate-function.html
total_summary <-summarise(demo_table1, meanofTotalMiles=mean(Total_Miles),meadianofTotalMiles=median(Total_Miles),varianceofTotalMiles=var(Total_Miles),stddeviofTotalMiles=sd(Total_Miles)) 
total_summary
