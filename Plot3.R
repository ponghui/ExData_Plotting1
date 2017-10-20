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
png(filename="Plot3.png",width = 480, height = 480, units = "px", pointsize = 12)

plot(data2$Datetime,data2$Sub_metering_1,type='l',
     col="black",
     xlab="",
     ylab = "Energy sub metering")
lines(data2$Datetime,data2$Sub_metering_2,col="red" ,type="l")
lines(data2$Datetime,data2$Sub_metering_3,col="blue", type="l")
legend(legend=c(colnames(data2)[7:9]),lwd=1,col=c("black","red","blue"),"topright")
dev.off()



