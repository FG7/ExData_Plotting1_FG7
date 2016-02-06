## Load data.table package
library("data.table")
## Read in data from file using fread() which is faster than read.table 
alldata <- fread("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
## Use as.Date() to convert Date variable into a variable class date
alldata$Date <- as.Date(alldata$Date, format = "%d/%m/%Y")
## Subset data to the desired days
sub_data <- alldata[alldata$Date == "2007-02-02" | alldata$Date == "2007-02-01",]
##
strptime(sub_data,format="%Y-%m-%d %H:%M:%S")

# Plot1
png(file="plot1.png", width=480, height=480, units="px", bg="transparent")
hist(sub_data$Global_active_power,col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")
dev.off()

