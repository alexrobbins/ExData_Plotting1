source("loadData.R")
plot4 <- function() {
  data <- loadData()

  png("plot4.png")
  # 2 x 2 matrix of plots
  par(mfrow=c(2,2),
      ps=12)

  # first plot
  plot(data$datetime,
       data$Global_active_power,
       xlab="",
       ylab="Global Active Power",
       type="l")

  # second plot
  plot(data$datetime,
       data$Voltage,
       xlab="datetime",
       ylab="Voltage",
       type="l")

  # third plot
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
         lwd=1,
         bty="n")

  # fourth plot
  plot(data$datetime,
       data$Global_reactive_power,
       xlab="datetime",
       ylab="Global_reactive_power",
       type="l")
  invisible(dev.off())
}