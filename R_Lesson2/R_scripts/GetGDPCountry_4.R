#This script computs the GDP for a country using gapminder data

#clear all vaiables
rm(list=ls())

#location of the data
filename <- "../Data/Data/gapminder.txt"

#read the file
gapminder <- read.table(filename, header = TRUE)

#extract gdpPercap from the gapminder data, using a specific country
getAverageGpdPerCapita <- function(country) {
  selctedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selctedCountryData)
}

#process large vecotr of South American Countries
southAmericanCountries <- c('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Ecuador', 'Paraguay', 'Peru', 'Uruguay', 'Venezuela')

#use sapply to invode getAverageGdpPerCapita() on all elements of the southAmerican Countires
averageGdpSouthAmericanCountries <- sapply(southAmericanCountries, getAverageGpdPerCapita)

