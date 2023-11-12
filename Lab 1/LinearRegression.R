multivariate <- read.csv("Data Analytics/files/multivariate.csv")
multivariate

help(lm)
#Linear Regression
# y = homeowners, x = Immigrants
mm <- lm(multivariate$Homeowners~multivariate$Immigrant)
mm
summary(mm)$coef
#The output above shows the estimate of the regression beta coefficients 
#(column Estimate) and their significance levels (column Pr(>|t|). 
# The intercept is 107494.898 and the coefficient of Immigrant 
# variable is -6656.839.  The estimated regression equation can 
# be written as follow: 
# Homeowners = 107494.898 + (-6656.839)*Immigrant 
# We can rewrite it as: 
# Homeowners = 107494.898 - 6656.839*Immigrant.

plot(multivariate$Homeowners~multivariate$Immigrant)
help(abline)
abline(mm, col="black", lwd=3)
# Using this formula, for each new value in Immigrant, you can 
# predict the value for Homeowners.
# As an example:
# For Immigrant value = 0, we will get: Homeowners = 107494.898 - 6656.839*0 = 107494.898 
# for Immigrant value = 20, we will get: Homeowners = 107494.898 - 6656.839*20 = -25641.88 
# Predictions can be easily made using the R function predict(). 
# In the following example, we predict Homeowners for two Immigrant values: 0 and 20. 
# you can pass the 0 and 20 values as a concatenated list for Immigrants as follows:
newImmigrantdata <- data.frame(Immigrant=c(0,20))
newImmigrantdata
mm %>% predict(newImmigrantdata)
mm


#Multivariate Regression
head(multivariate)

