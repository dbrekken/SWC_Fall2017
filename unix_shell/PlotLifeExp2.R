#!/bin/bash
#Record country with highest life expectancy
#life expectancy across the years script
myDataFull <-  read.table("gapminder.txt", header = TRUE)
Canada <-  myDataFull[myDataFull$country == "Canada",]

#plot life expectancy over the years
#open the file
png("Canada.png")

plot(Canada$year, Canada$lifeExp, col = "blue", type = "l")

#close the device
dev.off()

export PATH=$PATH: "path to R"
