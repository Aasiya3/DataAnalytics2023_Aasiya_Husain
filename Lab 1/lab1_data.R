EPI_data_csv <- read.csv(file.choose())
#EPI_data1 <- read.csv(file.choose())
#”./Data Analytics/EPI/2010EPI_data.csv"
#or
#EPI_data2 <- read.xlsx(file.choose())
# Note: replace default data frame name – cannot start with numbers!
#View(EPI_data)
#
attach(EPI_data_csv) 	# sets the ‘default’ object
fix(EPI_data_csv) 	# launches a simple data editor
#Make the first row of EPI_Data as the column names
names(EPI_data_csv) <- as.matrix(EPI_data_csv[1, ]) 
EPI_data_csv <- EPI_data_csv[-1, ] 
EPI_data_csv[] <- lapply(EPI_data_csv, function(x) type.convert(as.character(x)))
EPI_data_csv$EPI 
View(EPI_data_csv)

library(readxl)
#Using .xls
EPI_data <- read_excel("~/Data Analytics/files/EPI/2010EPI_data.xls", sheet="EPI2010_all countries")
EPI_data
EPI_data[] <- lapply(EPI_data, function(x) type.convert(as.character(x)))
EPI_data

#2016 EPI
EPI_data2016 <- read_excel("~/Data Analytics/files/EPI/2016-epi.xlsx", sheet="Indicator Scores")
EPI_data2016[] <- lapply(EPI_data2016, function(x) type.convert(as.character(x)))

EPI_data$EPI 			
tf <- is.na(EPI_data$EPI ) # records True values if the value is NA
tf
E <- EPI_data$EPI [!tf] # filters out NA values, new array
E
summary(EPI_data$EPI )
summary(E)

#Also tried $GDPCAP07
EPI_data$GDPCAP07
tf1 <- is.na(EPI_data$GDPCAP07) 
tf1
G <- EPI_data$GDPCAP07[!tf1]
G

summary(EPI_data$GDPCAP07)
summary(G)


#other data
#GRUMP_data <- read.csv(”<path>/GPW3_GRUMP_SummaryInformation_2010.csv")

