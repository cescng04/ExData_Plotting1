df = read.table("household_power_consumption.txt", header = T, sep = ";", colClasses = "character")
df = df[df$Date == "1/2/2007" | df$Date == "2/2/2007",]

png("plot1.png", width = 480, height = 480)
hist(as.numeric(df$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()