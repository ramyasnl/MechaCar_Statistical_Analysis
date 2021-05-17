# MechaCar_Statistical_Analysis
Module_15_MechaCar_Statistical_Analysis _using _R
##Overview##</br>
AutosRUs' new MechaCar is "suffering from production troubles" and the company is hoping that an analytical review may help provide some insight.</br>
## The goal of this project is to:</br>

*Discover which variables predict the MPG for vehicle prototypes;</br>
*Collect summary stats on the PSI of suspension coils;</br>
*Determine if manufacturing lots are statistically different from the mean population;</br>
*Design a study to compare the MechaCar performance against vehicles from other manufacturers.</br>
## Results</br>
## Deliverable 1</br>

<img src="https://github.com/ramyasnl/MechaCar_Statistical_Analysis/blob/main/images/UseDeliv1.png" width="400" height="400" /></br>
## Summary of Deliverable 1</br> 
* The most significant variables in our dataset which show a non-random effect on the MPG of the MechaCar are the Vehicle Length and the Ground Clearance. </br>As indicated by the yellow arrows in the image above, a linear regression model run on these variables against figures for MPG, resulted in p-values of 2.6x10-12 and 5.21x10-8, respectively.</br> The intercept was also statistically significant, indicating that there are likely other factors, not included in our dataset, that have a strong impact on the MPG.</br>
* The slope of the linear model can not be considered to be zero, as the p-value of 5.35x10-11,  is lower than even an extreme level of significance, and thus the null hypothesis must be rejected. This means that the relationship between our variables and the miles per gallon is subject to more than random chance.</br>
* Although there are still unconsidered factors, this model does predict the mpg of the MechaCar prototype with some relative effectiveness. The r-squared value of 0.7149,  indicates that the model is 71% accurate.
## Deliverable 2</br>
<img src="https://github.com/ramyasnl/MechaCar_Statistical_Analysis/blob/main/images/Deliv2.png" width="400" height="400" /></br>
## Summary of Deliverable 2</br>
* While the overall variance, as shown in the Total Summary data above, is under 100 psi and meets specifications, there is a problem with one of the individual lots.</br> As  shown in  the Lot Summary stats, the variance for Lot 3 is well over the acceptable threshold, at 170.28.</br>
