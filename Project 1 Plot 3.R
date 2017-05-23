#Creating plot 3
plot(power_final$DateTime,power_final$Sub_metering_1, type="l",col="black",xlab="",ylab="Energy Sub Metering")
lines(power_final$DateTime,power_final$Sub_metering_2,col="red")
lines(power_final$DateTime,power_final$Sub_metering_3,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_Metering_3"),col=c('black','red','blue'),lty='solid')

dev.copy(png, file="Project 1 Plot 3.png")
dev.off()
