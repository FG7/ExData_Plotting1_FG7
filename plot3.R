## Assumed that you already ran the script plot1.R, plot2.R and didn't remove any variables

## Plot 3
png(file="plot3.png", width=480, height=480, units = "px", bg="transparent")
plot(times,sub_data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
points(times,sub_data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
points(times,sub_data$Sub_metering_2, xlab="", ylab="Energy sub metering", type="l", col="red")
points(times,sub_data$Sub_metering_3, xlab="", ylab="Energy sub metering", type="l", col="blue")
legend("topright", pch="_", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"))   
dev.off()