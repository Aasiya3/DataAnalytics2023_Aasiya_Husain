#Cumulative Density Function
plot(ecdf(EPI_data$EPI), do.points=FALSE, verticals=TRUE) 

#Quantile-Quantile?
#Generates a square plotting region
par(pty="s") 
#Plots EPI against a normal distribution
#qqline adds a line to a “theoretical”, by default normal, 
#quantile-quantile plot which passes through the probs quantiles, 
#by default the first and third quantiles
qqnorm(EPI_data$EPI); qqline(EPI_data$EPI)

#Simulated data from t-distribution:
#creates a normally distributed data set
x <- rt(250, df = 5)
#plots it against a normal distribution
qqnorm(x); qqline(x)
#Looking at the graph, all the data points lie really
#close to the line representing what the graph should
#look like if the data is normally distributed.

#Make a Q-Q plot against the generating distribution by: 
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)
#plot one dataset against another to compare the distributions
#If plot points are along the (45 degree line, y=x)qqline() then the datasets 
#have similar distributions
#If the general trend of the Q–Q plot is flatter than the line y = x, 
#the distribution plotted on the horizontal axis is more dispersed than 
#the distribution plotted on the vertical axis. Conversely, if the general 
#trend of the Q–Q plot is steeper than the line y = x, the distribution plotted 
#on the vertical axis is more dispersed than the distribution plotted on the 
#horizontal axis. Q–Q plots are often arced, or "S" shaped, indicating that 
#one of the distributions is more skewed than the other, or that one of the 
#distributions has heavier tails than the other.

help(distributions)
# try different ones.....
#Density, cumulative distribution function, quantile function and 
#random variate generation for many standard probability distributions



#Exercise 1: Do the same fitting for two more variables in the EPI_data

#DALY
#Cumulative Density Function
plot(ecdf(EPI_data$DALY), do.points=FALSE, verticals=TRUE)
#Plots against normal distribution
qqnorm(EPI_data$DALY); qqline(EPI_data$DALY)

#WATER_H
plot(ecdf(EPI_data$WATER_H), do.points=FALSE, verticals=TRUE)
qqnorm(EPI_data$WATER_H); qqline(EPI_data$WATER_H)




#Comparing Distributions

#EPI and Daly
boxplot(EPI_data$EPI,EPI_data$DALY)
qqplot(EPI_data$DALY, EPI_data$EPI, xlab = "Q-Q comparing DALY and EPI")

#EPI and WATER_H
boxplot(EPI_data$EPI,EPI_data$WATER_H)
qqplot(EPI_data$WATER_H, EPI_data$EPI, xlab = "Q-Q comparing WATER_H and EPI")

#DALY and WATER_H 
boxplot(EPI_data$DALY,EPI_data$WATER_H) 
qqplot(EPI_data$DALY, EPI_data$WATER_H, xlab = "Q-Q comparing DALY and WATER_H")

#WATER_E AND WATER_H
boxplot(EPI_data$WATER_E,EPI_data$WATER_H) 
qqplot(EPI_data$WATER_E, EPI_data$WATER_H, xlab = "Q-Q comparing WATER_E and WATER_H")

#WATER_E and EPI
boxplot(EPI_data$WATER_E,EPI_data$EPI) 
qqplot(EPI_data$WATER_E, EPI_data$EPI, xlab = "Q-Q comparing WATER_E and EPI")

#ENVHEALTH and EPI
boxplot(EPI_data$ENVHEALTH,EPI_data$EPI) 
qqplot(EPI_data$ENVHEALTH, EPI_data$EPI, xlab = "Q-Q comparing ENVHEALTH and EPI")

#ECOSYSTEM and ENVHEALTH
boxplot(EPI_data$ECOSYSTEM,EPI_data$ENVHEALTH) 
qqplot(EPI_data$ECOSYSTEM, EPI_data$ENVHEALTH, xlab = "Q-Q comparing ECOSYSTEM and ENVHEALTH")
summary(EPI_data$ECOSYSTEM)

#AIR_E and AIR_H
boxplot(EPI_data$AIR_E,EPI_data$AIR_H) 
qqplot(EPI_data$AIR_E, EPI_data$AIR_H, xlab = "Q-Q comparing AIR_E and AIR_H")

#Biodiversity
#Has 0's which doesn't make sense, possibly a mistake. Filter out before using
#Come back to this after I learn how to filter



#Comparing 2010 to 2016 EPI
summary(EPI_data$EPI)
summary(EPI_data2016$`2016 EPI Score`)
boxplot(EPI_data$EPI, EPI_data2016$`2016 EPI Score`)
qqplot(EPI_data$EPI, EPI_data2016$`2016 EPI Score`, xlab = "Q-Q comparing 2010 EPI and 2016 EPI")
