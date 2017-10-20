
#assign png device
png(filename="Plot3.png",width = 480, height = 480, units = "px", pointsize = 12)

plot(data2$Datetime,data2$Sub_metering_1,type='l',
     col="black",
     xlab="",
     ylab = "Energy sub metering")
lines(data2$Datetime,data2$Sub_metering_2,col="red" ,type="l")
lines(data2$Datetime,data2$Sub_metering_3,col="blue", type="l")
legend(legend=c(colnames(data2)[7:9]),lwd=1,col=c("black","red","blue"),"topright")
dev.off()



