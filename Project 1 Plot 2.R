#Creating Plot 2
plot(power_final$DateTime,power_final$Global_active_power, type = "l", col="black",xlab = '', ylab = 'Global Active Power (kilowatts)')

dev.copy(png, file="Project 1 Plot 2.png")
dev.off()
