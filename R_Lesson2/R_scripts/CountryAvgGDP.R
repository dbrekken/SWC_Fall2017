#This script computes avg GDP for a country using gapminder dataset

#location of data
filename <- '../Data/Data/gapminder.txt'

#read the data file
gapminder <- read.table(filename, header = TRUE)

#create a variable to store country name
countryName <- 'Algeria'

#select the rows where the country is (Albania) and store albania Data
albaniaData <- gapminder[gapminder$country == countryName,]

#select the column containing the GDP per capita from Albania data
albaniaGDP <- albaniaData$gdpPercap
albaniaGDP

#computing avg GDP value
albaniaAvgGDP <- mean(albaniaGDP)
albaniaAvgGDP

#print message with result
print(paste("Average GDP of", countryName, 'is' ,albaniaAvgGDP))
