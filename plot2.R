source("loadData.R")
plot2 <- function() {
  data <- loadData()
  png("plot2.png")
  plot(data$datetime,
       data$Global_active_power,
       xlab="",
       ylab="Global Active Power (kilowatts)",
       type="l")
  invisible(dev.off())
}