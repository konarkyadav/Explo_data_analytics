##file <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", stringsAsFactors = FALSE)

##dim(file)
##file$Date <- as.Date(file$Date, format = "%d %m %Y")
##data <- subset(file, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

##globalactivepower <- as.numeric(data$Global_active_power)

##hist(globalactivepower,main="Global Active Power",xlab="Global Active Powe(kilowatts)",ylab="Frequency",col="Red")

##dev.copy(png, file="plot1.png", height=480, width=480)

##dev.off()


data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
