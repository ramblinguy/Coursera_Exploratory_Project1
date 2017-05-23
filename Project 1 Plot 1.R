setwd("/Users/U57P85/Documents/R/Exploratory Data Analysis")
#Downloading File
if (!file.exists("power.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","power.zip")
  unzip("power.zip",exdir = "power")
}
#Reading file and converting the date
power <- read.table("power/household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
power$DateTime <- strptime(paste(power$Date,power$Time,sep = " "),"%d/%m/%Y %H:%M:%S")

#View(power)
#str(power)

#Subsetting
power_final <- subset(power,power$DateTime >= '2007-02-01' & power$DateTime < '2007-02-03')

#Creating plot one
hist(power_final$Global_active_power,col = 'red',main = 'Global Active Power',xlab = 'Global Active Power (kilowatts)')

dev.copy(png, file="Project 1 Plot 1.png")
dev.off()
