df = read.table("household_power_consumption.txt", header = T, sep = ";", colClasses = "character")
df = df[df$Date == "1/2/2007" | df$Date == "2/2/2007",]

png("plot3.png", width = 480, height = 480)
df$Date = as.Date(df$Date, "%d/%m/%Y")
df$Period = paste(df$Date, df$Time)
df$Period = strptime(df$Period, format = "%Y-%m-%d %H:%M:%S")
plot(df$Period, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(df$Period, df$Sub_metering_2, col = "red")
lines(df$Period, df$Sub_metering_3, col = "blue")
legend(x = "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))
dev.off()