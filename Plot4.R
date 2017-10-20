
#assign png device
png(filename="Plot4.png",width = 480, height = 480, units = "px", pointsize = 12)

par(mfrow=c(2,2))

plot(data2$Datetime,y=data2$Global_active_power,type='l',
     xlab="",
     ylab = "Global Active Power")

plot(data2$Datetime,y=data2$Voltage,type='l',
     xlab="datetime",
     ylab = "Voltage")

plot(data2$Datetime,data2$Sub_metering_1,type='l',
     col="black",
     xlab="",
     ylab = "Energy sub metering")
lines(data2$Datetime,data2$Sub_metering_2,col="red" ,type="l")
lines(data2$Datetime,data2$Sub_metering_3,col="blue", type="l")
legend(legend=c(colnames(data2)[7:9]),lwd=1,col=c("black","red","blue"),"topright")

plot(data2$Datetime,y=data2$Global_reactive_power,type='l',
     xlab="datetime",
     ylab = "Global_reactive_power")

dev.off()



