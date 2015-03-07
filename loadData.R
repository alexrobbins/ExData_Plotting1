# This file prepares the data for all the plotting functions.

library(data.table)
library(lubridate)
library(dplyr)


loadData <- function() {
  # 1)Load data from txt file.
  data <- fread("household_power_consumption.txt",
                sep=";",
                colClasses=rep("character", 9))
  data %>%
    # 2)Filter down to February 1st and 2nd.
    filter(Date == "1/2/2007" | Date == "2/2/2007") %>%
    # 3)Convert columns to date-time or numeric fields.
    transmute(datetime=dmy_hms(paste(Date, Time)),
              Global_active_power=as.numeric(Global_active_power),
              Global_reactive_power=as.numeric(Global_reactive_power),
              Voltage=as.numeric(Voltage),
              Sub_metering_1=as.numeric(Sub_metering_1),
              Sub_metering_2=as.numeric(Sub_metering_2),
              Sub_metering_3=as.numeric(Sub_metering_3))
}