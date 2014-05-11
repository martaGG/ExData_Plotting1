library(data.table)
fi <- "household_power_consumption.txt"
dat <- fread(fi, header=T, sep=";",na.strings=c("?","NA"))
dat <- subset(dat, dat$Date == "1/2/2007" | dat$Date == "2/2/2007")
dat$Global_active_power <- as.numeric(dat$Global_active_power)
png("plot1.png")
hist(dat$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()