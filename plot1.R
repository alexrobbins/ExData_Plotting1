source("loadData.R")
plot1 <- function() {
  data <- loadData()
  png("plot1.png")
  hist(data$Global_active_power,
       col="red",
       xlab="Global Active Power (kilowatts)",
       main="Global Active Power")
  invisible(dev.off())
}