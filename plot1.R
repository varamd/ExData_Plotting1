## Read data

gpa <- read.table("household_power_consumption.txt", stringsAsFactors = FALSE, header=TRUE, sep=';')

## Subset Data for the Date Range

gpa2 <- subset(gpa, Date=="1/2/2007" | Date=="2/2/2007")


with(gpa2, hist(as.numeric(Global_active_power), col='Red',
                main=paste("Global Active Power"), xlab="Global Active Power (kilowatts)"))
