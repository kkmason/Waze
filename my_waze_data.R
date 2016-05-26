#Import Dataset

my_waze_data <- read.csv("~/GitHub/Waze/my_waze_data.csv")
   View(my_waze_data)

#Convert epoc timestamp to datetime

my_waze_data$datetime <- as.POSIXct(as.numeric(as.character(my_waze_data$created_time)), origin='1970-01-01', tz='GMT')
   
#Activate libraries

library(dplyr)
library(ggplot2)
library(ggmap)
