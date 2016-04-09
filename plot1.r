z <- read.csv(file="household_power_consumption.txt",sep=";",header = TRUE, stringsAsFactors = FALSE)
z$Date <- as.Date(z$Date,"%d/%m/%Y")
z <- z[z$Date >= "2007-02-01" & z$Date <= "2007-02-02",]
z$Global_active_power <- as.numeric(z$Global_active_power)
png("plot1.png",width=480,height=480,bg="transparent")
hist(z$Global_active_power,main="Global Active Power", border="black", col="red", xlab="Global Active Power (kilowatts)")
dev.off()