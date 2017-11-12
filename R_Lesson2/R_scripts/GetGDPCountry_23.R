#This script computs the GDP for a country using gapminder data

#clear all vaiables
rm(list=ls())

#location of the data
filename <- "../Data/Data/gapminder.txt"

#read the file
gapminder <- read.table(filename, header = TRUE)

#extract gdpPercap from the gapminder data, using a specific country
getAverageGpdPerCapita <- function(country,gapminder) {
  selctedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selctedCountryData)
}

gdpUSA <- getAverageGpdPerCapita("United_States", gapminder)
gdpUSA
gdpCanada <-  getAverageGpdPerCapita("Canada", gapminder)
gdpMexico <- getAverageGpdPerCapita("Mexico", gapminder)

print(paste('GDP of USA is', gdpUSA))
print(paste("GDP of Canada is", gdpCanada))
