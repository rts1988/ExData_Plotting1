rm(list=ls())
if (!grepl("ExData_Plotting1",getwd())) {setwd("./ExData_Plotting1")}
load('edatasub.Rda')
plot.new()

plot(edatasub$Date_time,edatasub$Sub_metering_1, type="l",col="black", main="",xlab="",ylab="Energy sub metering",xaxt="n")
par(new = T)
lines(edatasub$Date_time,edatasub$Sub_metering_2, type="l",col="red", main="",xlab="",ylab="",xaxt="n")
par(new = T)
lines(edatasub$Date_time,edatasub$Sub_metering_3, type="l",col="blue", main="",xlab="",ylab="Energy sub metering",xaxt="n")
labeln <- c("Thu", "Fri", "Sat")
tickpos <- c(edatasub$Date_time[1], edatasub$Date_time[as.integer(length(edatasub$Date_time)/2)],edatasub$Date_time[length(edatasub$Date_time)])
axis(side=1, at=tickpos,labels=labeln)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))


dev.copy(png,"plot3.png")
dev.off()
rm(list=ls())