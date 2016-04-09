z <- read.csv(file="household_power_consumption.txt",sep=";",header = TRUE, stringsAsFactors = FALSE)
z$Date <- as.Date(z$Date,"%d/%m/%Y")
z <- z[z$Date >= "2007-02-01" & z$Date <= "2007-02-02",]
z$Sub_metering_1 <- as.numeric(z$Sub_metering_1)
z$Sub_metering_2 <- as.numeric(z$Sub_metering_2)
z$Sub_metering_3 <- as.numeric(z$Sub_metering_3)
dateTime<-as.POSIXct(paste(z$Date, z$Time), format="%Y-%m-%d %H:%M:%S")

png("plot3.png",width=480,height=480,bg="transparent")

plot(dateTime,z$Sub_metering_1,type="s",ylab="Energy sub metering",xlab="")
lines(dateTime,z$Sub_metering_2,col="red")
lines(dateTime,z$Sub_metering_3,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"),lwd=1)

dev.off()