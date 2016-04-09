z <- read.csv(file="household_power_consumption.txt",sep=";",header = TRUE, stringsAsFactors = FALSE)
z$Date <- as.Date(z$Date,"%d/%m/%Y")
z <- z[z$Date >= "2007-02-01" & z$Date <= "2007-02-02",]
z$Global_active_power <- as.numeric(z$Global_active_power)
dateTime<-as.POSIXct(paste(z$Date, z$Time), format="%Y-%m-%d %H:%M:%S")

png("plot2.png",width=480,height=480,bg="transparent")
plot(dateTime,z$Global_active_power,type="s",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()