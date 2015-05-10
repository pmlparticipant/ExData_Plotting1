data <- read.table("/home/ponadto/Downloads/exploratoryDataAnalysis/ExData_Plotting1/household_power_consumption.txt",sep=";",nrows=-1,na.strings="?",stringsAsFactors=F,header=T)
the.right.data <- which(grepl("^[1,2]/2/2007",data[,1]))
data <- data[the.right.data,]
png("/home/ponadto/Downloads/exploratoryDataAnalysis/ExData_Plotting1/plot1.png")
hist(data[,3],freq=T,main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red")
dev.off()