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

<img src="https://github.com/ramyasnl/MechaCar_Statistical_Analysis/blob/main/images/UseDeliv1.png"  /></br>
## Summary of Deliverable 1</br> 
* The most significant variables in our dataset which show a non-random effect on the MPG of the MechaCar are the Vehicle Length and the Ground Clearance. </br>As indicated by the yellow arrows in the image above, a linear regression model run on these variables against figures for MPG, resulted in p-values of 2.6x10-12 and 5.21x10-8, respectively.</br> The intercept was also statistically significant, indicating that there are likely other factors, not included in our dataset, that have a strong impact on the MPG.</br>
* The slope of the linear model can not be considered to be zero, as the p-value of 5.35x10-11,  is lower than even an extreme level of significance, and thus the null hypothesis must be rejected. This means that the relationship between our variables and the miles per gallon is subject to more than random chance.</br>
* Although there are still unconsidered factors, this model does predict the mpg of the MechaCar prototype with some relative effectiveness. The r-squared value of 0.7149,  indicates that the model is 71% accurate.
## Deliverable 2</br>
<img src="https://github.com/ramyasnl/MechaCar_Statistical_Analysis/blob/main/images/Deliv2.png"  /></br>
## Summary of Deliverable 2</br>
* While the overall variance, as shown in the Total Summary data above, is under 100 psi and meets specifications, there is a problem with one of the individual lots.</br> As  shown in  the Lot Summary stats, the variance for Lot 3 is well over the acceptable threshold, at 170.28.</br>
## Deliverable 3</br>
<img src="https://github.com/ramyasnl/MechaCar_Statistical_Analysis/blob/main/images/Deliver3.png"  /></br>
## Summary of Deliverable 3</br>
## Suspension Coils Cumulative T-test</br>
A review of the results of the T-test for the suspension coils across all manufacturing lots shows that they are not statistically different from the population mean,</br> and the p-value is not low enough (0.0603) for us to reject the null hypothesis.
## Suspension Coils T-test by Lot1</br>
A review of the results of the T-test for the suspension coils for Lot 1 shows that they are not statistically different from the population mean,</br> and the p-value is not low enough (1) for us to reject the null hypothesis.</br>
## Suspension Coils T-test by Lot2</br>
A review of the results of the T-test for the suspension coils for Lot 2 shows that they are not statistically different from the population mean, and the p-value is not low enough (0.6072) for us to reject the null hypothesis.</br>
## Suspension Coils T-test by Lot3</br>
A review of the results of the T-test for the suspension coils for Lot 3 shows that they are slightly statistically different from the population mean,</br> and the p-value is just low enough (0.0417) for us to reject the null hypothesis. This lot may be need to be discarded, or at least more closely evaluated.</br>
## Deliverable 4 
## DESIGN MY OWN STUDY:
Horsepower is a metric that can be used to compare the MechaCar prototype vehicle to other comparable vehicles on the market.</br> Although the MechaCar dataset did not include this metric, the mtcars dataset did. </br>I used a single linear regression model to determine whether there is a correlation between horsepower (hp) and miles per gallon (mpg).</br> It tested the following hypotheses:
  * H0: There is a correlation between hp and mpg.</br>
  * Ha: There is no collreation between hp and mpg.</br>
  
 <img src="https://github.com/ramyasnl/MechaCar_Statistical_Analysis/blob/main/images/mtcarsD4.png"  /></br> 
The model resulted in a multiple r-square value of 0.6024. Given the multiple r-square value, I can see that there is a moderate/strong correlation between hp and mpg.</br>

I used a one-sample t-test as my second statistical test. I tested on a sample size of 20 to see if there is statistical similarities between the horsepower sample mean and horsepower population mean. </br>I did this to see if hp would be worthy data collection point for further analysis. It tested the following hypotheses:
  * H0 : There is no statistical difference between the observed sample mean and its presumed population mean.</br>
  * Ha : There is a statistical difference between the observed sample mean and its presumed population mean.</br>
The t-test resulted in a p-value of 0.4084, which is above the significance level of 0.05%. Therefore, I do not have sufficient evidence to reject the null hypothesis,
and thereby state that the two means are statistically similar.</br>

Based on my single linear regression model and one-sample t-test, </br>
there is evidence to suggest that horsepower would be a worthy data collection point to include in the MechaCar dataset for further studies.
