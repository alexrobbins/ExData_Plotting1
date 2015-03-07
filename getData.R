# This file downloads and unzips the source data.
getData <- function() {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                "household_power_consumption.zip", method="curl")
  unzip("household_power_consumption.zip")
}