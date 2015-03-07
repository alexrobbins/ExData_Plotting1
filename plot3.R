source("loadData.R")
plot3 <- function() {
  data <- loadData()
  png("plot3.png")
  plot(data$datetime,
       data$Sub_metering_1,
       xlab="",
       ylab="Energy sub metering",
       type="l")
  lines(data$datetime,
        data$Sub_metering_2,
        col="red")
  lines(data$datetime,
        data$Sub_metering_3,
        col="blue")
  legend("topright",
         legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
         col=c("black", "red", "blue"),
         lwd=1)
  invisible(dev.off())
}