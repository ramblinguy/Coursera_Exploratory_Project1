par(mfrow = c(2,2))

plot(power_final$DateTime,power_final$Global_active_power, type = "l", col="black",xlab = '', ylab = 'Global Active Power (kilowatts)')

plot(power_final$DateTime,power_final$Voltage,type = "l",col="black",xlab = 'datetime',ylab = 'Voltage')

plot(power_final$DateTime,power_final$Sub_metering_1, type="l",col="black",xlab="",ylab="Energy Sub Metering")
lines(power_final$DateTime,power_final$Sub_metering_2,col="red")
lines(power_final$DateTime,power_final$Sub_metering_3,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_Metering_3"),col=c('black','red','blue'),lty='solid')

plot(power_final$DateTime,power_final$Global_reactive_power,xlab = 'datetime',ylab = 'Global_reactive_power',col='black',type = "l")
