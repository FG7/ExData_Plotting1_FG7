## Assumed that you already ran the script plot1.R, plot2.R and didn't remove any variables

png(file="plot4.png", width=480, height=480, units = "px", bg="transparent")
par(mfrow=c(2,2))
plot(times, sub_data$Global_active_power, xlab="", ylab="Global Active Power", type="l")
plot(times, sub_data$Voltage,xlab = "datetime", ylab="Voltage", type="l")
plot(times, sub_data$Sub_metering_1, xlab="", ylab="Global Active Power", type="n")
points(times, sub_data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
points(times, sub_data$Sub_metering_2, xlab="", ylab="Energy sub metering", type="l", col="red")
points(times, sub_data$Sub_metering_3, xlab="", ylab="Energy sub metering", type="l", col="blue")
legend("topright", pch="_", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
          bty="n", col=c("black","red","blue"))
plot(times, sub_data$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")
dev.off()