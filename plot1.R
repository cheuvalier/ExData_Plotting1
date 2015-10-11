dat <- read.csv("./exdata-data-household_power_consumption/household_power_consumption.txt", sep = ";", colClasses = "character")
dat[, 1] <- as.Date(dat$Date, format = "%d/%m/%Y", tz = "UTC")
dat1 <- dat[which(dat$Date == "2007-02-01" | dat$Date == "2007-02-02"), ]
dat1$Global_active_power <- as.numeric(dat1$Global_active_power)
png("plot1.png")
hist(dat1$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()