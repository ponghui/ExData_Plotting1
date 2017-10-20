#loading data
library(lubridate)
library(dplyr)
data <- read.csv2('../data/household_power_consumption.txt',sep=";",
                  colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
                  dec=".",
                  na.strings="?")

data2 <- data %>% 
        mutate( Datetime=as.POSIXct(paste(Date,Time, sep=" "),format="%d/%m/%Y %H:%M:%S")) %>%
        filter(Datetime >= ymd("2007/02/01") & Datetime < ymd("2007/02/03"))


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



