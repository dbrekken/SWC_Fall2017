#Write a script to calculate mean gdpPerCapita for African and European
#countries.
#Try to make a barplot to display your results
#### Hint : ?mean ?barplot
myDataChallenge <-  read.table("gapminder.txt", header = TRUE)
myDataChallenge[c(myDataChallenge[(myDataChallenge$continent == "Africa",], myDataChallenge[(myDataChallenge$continent == "Europe",])]
