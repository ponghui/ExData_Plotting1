
#assign png device
png(filename="Plot1.png",width = 480, height = 480, units = "px", pointsize = 12)

hist(data2$Global_active_power, 
     breaks=12, 
     col='Red', 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

dev.off()



