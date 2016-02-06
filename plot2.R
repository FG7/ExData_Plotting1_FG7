## Assumed that you already ran the script plot1.R and didn't remove any variables

## Plot 2
png(file="plot2.png", width=480, height=480, units="px", bg="transparent")
times <- strptime(paste(sub_data$Date, sub_data$Time, sep=""), format="%Y-%m-%d %H:%M:%S")
plot(times, sub_data$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)",
     type = "l")
dev.off()