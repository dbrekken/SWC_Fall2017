#Write a script to calculate mean gdpPerCapita for African and European
#countries.
#Try to make a barplot to display your results
#### Hint : ?mean ?barplot
myDataChallenge <-  read.table("gapminder.txt", header = TRUE)
africa <- myDataChallenge[myDataChallenge$continent == "Africa",]
mean.afri <- mean(africa$gdpPercap)
mean.afri
europe <- myDataChallenge[myDataChallenge$continent == "Europe",]
mean.eur <- mean(europe$gdpPercap)
mean.eur
#store the mean values in a vector
afri.Euro.Mean <- c(mean.afri, mean.eur)
png (afri.Euro.Mean.png)
barplot''