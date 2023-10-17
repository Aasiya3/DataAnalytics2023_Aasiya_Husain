#Landlock
EPILand<-EPI_data[!EPI_data$Landlock,]

#filter out NA values (there are none btw)
ELand <- EPILand[!is.na(EPILand$Landlock),]
#keep rows that arn't NA
E1land <- EPILand[is.na(EPILand$Landlock),]


hist(ELand$Landlock, seq(0, 1, 0.1), prob=TRUE)
hist(EPI_data$Landlock, seq(0, 1, 0.1), prob=TRUE)
hist(EPI_data$Landlock)
#hist(ELand, seq(30., 95., 1.0), prob=TRUE)

# 0 is false, 1 is true

length(which(EPI_data$Landlock == 1))
length(which(EPI_data$Landlock == 0))



#Exercise: Repeat for No_surface_water, Desert and High_Population_Density 

#None of them have any NA's
tf <- is.na(EPI_data$No_surface_water)
tf <- is.na(EPI_data$Desert)
tf <- is.na(EPI_data$High_Population_Density)

#No_surface_water
EPISurfaceWater <-EPI_data[!EPI_data$No_surface_water,]
hist(EPI_data$No_surface_water)
hist(EPI_data$No_surface_water, seq(0, 1, 0.1), prob=TRUE)

EPINoSurfaceWater <-EPI_data[EPI_data$No_surface_water==1,]
hist(EPINoSurfaceWater$AIR_E)

#Desert
EPIDessert<-EPI_data[!EPI_data$Desert,]
hist(ELand$Desert, seq(0, 1, 0.1))
hist(ELand$Desert, seq(0, 1, 0.1), prob=TRUE)
EPIDessert<-EPI_data[EPI_data$Desert==1,]

#High_Population_Density
EPIHighPop<-EPI_data[!EPI_data$High_Population_Density,]
hist(ELand$High_Population_Density, seq(0, 1, 0.1), prob=TRUE)
EPINoHighPop<-EPI_data[EPI_data$High_Population_Density==1,]
hist(ELand$High_Population_Density, seq(0, 1, 0.1))

#Your exercise: how to filter on EPI_regions or GEO_subregion? 
EPI_South_Asia <- EPI_data[EPI_data$GEO_subregion == "South Asia",]

