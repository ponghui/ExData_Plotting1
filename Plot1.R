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
png(filename="Plot1.png",width = 480, height = 480, units = "px", pointsize = 12)

hist(data2$Global_active_power, 
     breaks=12, 
     col='Red', 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

dev.off()



