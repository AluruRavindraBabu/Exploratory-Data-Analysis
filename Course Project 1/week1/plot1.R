setwd("D:/coursera/ExploratoryDA/week1/PowerConsumption")
# Accessing the data from household_power_consumption.txt file
hhpc <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
head(hhpc)
#Use data from the dates 2007-02-01 and 2007-02-02
onemonthData <- hhpc[hhpc$Date %in% c("1/2/2007","2/2/2007") ,]
# Global Activie Power - Histogram Chart 
gAP <- as.numeric(onemonthData$Global_active_power)

# Exporting chart in png format
png("plot1.png", width=480, height=480)
hist(gAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
