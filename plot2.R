df = read.table("household_power_consumption.txt", header = T, sep = ";", colClasses = "character")
df = df[df$Date == "1/2/2007" | df$Date == "2/2/2007",]

png("plot2.png", width = 480, height = 480)
df$Date = as.Date(df$Date, "%d/%m/%Y")
df$Period = paste(df$Date, df$Time)
df$Period = strptime(df$Period, format = "%Y-%m-%d %H:%M:%S")
plot(df$Period, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()