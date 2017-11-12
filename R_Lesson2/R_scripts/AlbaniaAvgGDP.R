#This script computes avg GDP for Albania using gapminder dataset
#location of data
filename <- '../Data/Data/gapminder.txt'

gapminder <- read.table(filename, header = TRUE)

#select the rows where the country is (Albania) and store albania Data
albaniaData <- gapminder[gapminder$country == "Albania", ]

#select the column containing the GDP per capita from Albania data
albaniaGDP <- albaniaData$gdpPercap
albaniaGDP

#computing avg GDP value
albaniaAvgGDP <- mean(albaniaGDP)
albaniaAvgGDP

#print message with result
print(paste("Average GDP of Albania is", albaniaAvgGDP))
