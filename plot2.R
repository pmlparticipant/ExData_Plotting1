data <- read.table("/home/ponadto/Downloads/exploratoryDataAnalysis/ExData_Plotting1/household_power_consumption.txt",sep=";",nrows=-1,na.strings="?",stringsAsFactors=F,header=T)
the.right.data <- which(grepl("^[1,2]/2/2007",data[,1]))
the.right.data <- c(the.right.data,the.right.data[length(the.right.data)]+1)
data <- data[the.right.data,]
time <- rep("",dim(data)[1])
for(i in 1:length(time)) {
  time[i] <- paste(data[i,1],data[i,2]) #,format="%d/%m/%Y %H:%M:%S")
}
time <- strptime(time,format="%d/%m/%Y %H:%M:%S")
time.range <- c(time[1],time[length(time)])
png("/home/ponadto/Downloads/exploratoryDataAnalysis/ExData_Plotting1/plot2.png")
plot(time,data[,3],xlab="",ylab="Global Active Power (kilowatts)",type="l")
axis.POSIXct(1, at=seq(time.range[1], time.range[2], by="day"), format="%a")
dev.off()
