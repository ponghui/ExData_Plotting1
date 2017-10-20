
#assign png device
png(filename="Plot2.png",width = 480, height = 480, units = "px", pointsize = 12)

plot(data2$Datetime,y=data2$Global_active_power,type='l',
     xlab="",
     ylab = "Global Active Power(kilowatts)")

dev.off()