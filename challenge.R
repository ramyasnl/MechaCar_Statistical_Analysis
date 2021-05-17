#################################Deliverable1##############################
library(tidyverse)
library(ggplot2)
### Perform Multiple Linear Regression on MechaCar dataset ,### 15.7.3
mecha_data <- read.csv("Challenge/MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)
head(mecha_data)
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_data)
summary(mecha_lm)
##################Deliverable2################################################
library(tidyverse)
Suspension_table <- read.csv("Challenge/Suspension_Coil.csv",stringsAsFactors = F,check.names = F)
head(Suspension_table)
total_summary <-summarise(Suspension_table, meanofTsuspen_coil=mean(PSI),meadianofsuspen_coil=median(PSI),variancesuspen_coil=var(PSI),stddeviofsuspen_coil=sd(PSI)) 
total_summary
#summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table
lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot)%>% summarize(MeanofTsuspen_coil=mean(PSI),Meadianofsuspen_coil=median(PSI),Varianceofsuspen_coil=var(PSI),StDeviofsuspen_coil=sd(PSI))  
#create summary table
lot_summary
########################Deliverable3###########################################
#SUSPENSION COIL T-TEST
# Generate 50 random sample data points ----EXTRAS----
sample_table1 <- Suspension_table %>% sample_n(50) 
#sample_table1
sample_table2 <- Suspension_table %>% sample_n(50)
#sample_table2
#Compare the means of two samples
t.test(sample_table1$PSI, sample_table2$PSI)
#An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population
#1. Determine if the suspension coil's PSI results are statistically different from the mean population PSI results of 1,500.
t.test(Suspension_table$PSI, mu = 1500)
#2.An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population
t.test(subset(Suspension_table, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_table, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_table, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
##############################Deliverable4###################################
###MY STUDY of VEHICLE WEIGHT Vs MPG of mtcars  
# Create a single linear regression model
lm(mpg ~ wt, data = mtcars)
# Create summary linear model
summary(lm(mpg ~ wt, data = mtcars))
# Create summary statistics for weight of car(wt)
mtcars %>%
  summarize(wt_mean= mean(wt), 
            wt_median = median(wt), 
            wt_variance = var(wt),
            wt_sd = sd(wt))
# Generate 20 random sample data points 
sample_mtcars <- mtcars %>% sample_n(20) 
#sample_mtcars
# Determine statistical differences using t-test
t.test(sample_mtcars$wt, mu = 3.21725 )
##############STUDY OF VEHICLE WEIGHT Vs MPG of MechaCar 
#head(mecha_data)
# Create a single linear regression model
lm(mpg ~ vehicle_weight, data = mecha_data)
# Create summary linear model
summary(lm(mpg ~ vehicle_weight, data = mecha_data))
# Create summary statistics for vehicle_weight of mecha_data
mecha_data %>%summarize(vehicle_weight_mean= mean(vehicle_weight), 
            vehicle_weight_median = median(vehicle_weight), 
            vehicle_weight_variance = var(vehicle_weight),
            vehicle_weight_sd = sd(vehicle_weight))
# Generate 20 random sample data points 
sample_mecha_data <- mecha_data %>% sample_n(20) 

# Determine statistical differences using t-test
t.test(sample_mecha_data$vehicle_weight, mu =  6154.147  )
###################################################DELIVERABLE4#########################################
# DESIGN MY OWN STUDY##### Used mtcars as a Competition to MechaCar,compared miles per gallon (mpg) vs. horsepower (hp) of mtcars
head(mtcars)
# Create a single linear regression model
lm(mpg ~ hp, data = mtcars)
# Create summary linear model
summary(lm(mpg ~ hp, data = mtcars))
# Create summary statistics for horsepower (hp)
mtcars %>%
  summarize(hp_mean= mean(hp), 
            hp_median = median(hp), 
            hp_variance = var(hp),
            hp_sd = sd(hp))
# Generate 20 random sample data points 
sample_mtcars <- mtcars %>% sample_n(20) 
#sample_mtcars
# Determine statistical differences using t-test
t.test(sample_mtcars$hp, mu = 146)

