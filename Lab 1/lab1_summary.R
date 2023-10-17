# Min. 1st Qu.  Median    Mean  3rd Qu.    Max.    NA's 
summary(EPI_data$EPI) 	# stats
summary(EPI_data_csv$EPI) 

# Min.   1st Qu.   Median    3rd Qu.   Max.
# Min lower_median Median Upper_median Max
fivenum(EPI_data$EPI,na.rm=TRUE)
fivenum(EPI_data_csv$EPI,na.rm=TRUE)

help(stem)
stem(EPI_data$EPI)		 # stem and leaf plot
stem(EPI_data_csv$EPI)
#You can actually see the values in this one
stem(EPI_data$EPI, scale = 3)


help(hist)
hist(EPI_data$EPI)
#Creates a bar for each integer from 30 to 95
#seq(to, from, by)
hist(EPI_data$EPI, seq(30., 95., 1.0), prob=TRUE)

help(lines)
lines(density(EPI_data$EPI,na.rm=TRUE,bw=1.)) 
# or try bw=“SJ”
lines(density(EPI_data$EPI,na.rm=TRUE,bw="SJ"))

help(rug)
rug(EPI_data$EPI) 
# ^ The rest of these are addons to the histogram


#Exercise 1: Explore 2 other variable is EPI_data

#DALY
EPI_data$DALY
summary(EPI_data$DALY)
fivenum(EPI_data$DALY)

stem(EPI_data$DALY)
stem(EPI_data$DALY, scale =2)
stem(EPI_data$DALY, scale =3)
stem(EPI_data$DALY, scale =4)

#Auto generated x-axis
hist(EPI_data$DALY)
#Plots by frequency
hist(EPI_data$DALY, seq(0., 92., 1.0))
#Plots by density
hist(EPI_data$DALY, seq(0., 92., 1.0), prob=TRUE)
lines(density(EPI_data$DALY,na.rm=TRUE,bw=1.)) 
lines(density(EPI_data$DALY,na.rm=TRUE,bw="SJ"))
#This is a bit interesting, There are darker lines under
#the lower parts of the graph and 
rug(EPI_data$DALY)


#WATER_H
EPI_data$WATER_H
summary(EPI_data$WATER_H)
fivenum(EPI_data$WATER_H)

#Scale of 1 is enough to show all the values
stem(EPI_data$WATER_H)

#Auto generated x-axis
hist(EPI_data$WATER_H)
#Plots by frequency
hist(EPI_data$WATER_H, seq(0., 100., 1.0))
#Plots by density
hist(EPI_data$WATER_H, seq(0., 100., 1.0), prob=TRUE)
lines(density(EPI_data$WATER_H,na.rm=TRUE,bw=1.)) 
lines(density(EPI_data$WATER_H,na.rm=TRUE,bw="SJ"))
rug(EPI_data$WATER_H)







