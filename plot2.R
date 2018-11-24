rm(list=ls())
if (!grepl("ExData_Plotting1",getwd())) {setwd("./ExData_Plotting1")}
load('edatasub.Rda')
plot.new()
plot(edatasub$Date_time,edatasub$GAP,type="l",main="",xlab="",ylab="Global Active Power (kilowatts)",xaxt="n")
labeln <- c("Thu", "Fri", "Sat")
tickpos <- c(edatasub$Date_time[1], edatasub$Date_time[as.integer(length(edatasub$Date_time)/2)],edatasub$Date_time[length(edatasub$Date_time)])
axis(side=1, at=tickpos,labels=labeln)

dev.copy(png,"plot2.png")
dev.off()
rm(list=ls())