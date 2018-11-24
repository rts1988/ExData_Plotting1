rm(list=ls())
if (!grepl("ExData_Plotting1",getwd())) {setwd("./ExData_Plotting1")}
load('edatasub.Rda')
plot.new()
with(edatasub, hist(GAP,col='red',ylim=c(0,1200), main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency"))
dev.copy(png,"plot1.png")
dev.off()
rm(list=ls())


