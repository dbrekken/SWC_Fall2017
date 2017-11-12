sqrt(64)
print("Wow")
print(64)
print("Wow")
install.packages("knitr")
library(knitr)
?print
help(mean)
#variable********
name <- "Jane"
price <- 3.99      
price
name
print(price)
mass <- 47.5
mass
ls()
rm(name)
rm(li <- st=ls())
res<- sqrt(64)
res
age <- 45
length(age)
str(age)
typeof(age)
score <- 79
score
is.integer(score)
typeof(is.integer(score))
#nested functions
#how to create a multi-element variable
v <- c(1:10)
v
length(v)
str(v)
head(v, n=2)
tail(v, n=3)
#manipulate data
v <- c(v, 56)
v

#vectorization
v1 <- v*2
v1
#change data type
v2 <- as.character(v1) 
v2

#matrices
m <- matrix(c(1:18), 3, 6)
m
dim(m)

#categorical variable
#factor#

f <- factor(c("M","F" ,"F"))
f
str(f)

# List
l <- list("Afghanistan", 1952, 86769)
l
str(l)
length(l)

#Challenge:
#  Try to create a list named 'myOrder' that contains the 
#following data structures as list elements:
 # -- Element 1 is a character vector of length 4 that 
#lists the menu items you ordered from the restauranchicken, soup, salad, tea.

#-- Element 2 is a factor prdescribes menu items
#as "liquid" or "solid".

#-- Element 3 is a vector that records the cost of each menu item:
 # 4.99, 2.99, 3.29, 1.89.

#*Hint: Define your elements first, then create a list with them.e2 <- factor(c("liquid", "solid", "liquid"))

menuCost <- c(4.99, 2.99, 3.29, 1.89)
menuType <- factor(c("solid", "liquid","solid", "liquid"))
menuItems <- c("chicken", "soup", "salad", "tea")             
myOrder <- list(menuItems, menuType, menu)
myOrder
length(myOrder)
str(myOrder)
myOrder
length(menuItems)
length(menuType)
length(menuCost)
#data frames
myOrder_df <- data.frame(menuItems, menuType, menuCost)
myOrder_df

#data subsets
#by position index
v <-c(10:20)
v
v[7]
v[7:10]
v[-C(7:10)]
myOrder[1]
myOrder[3]
myOrder_df
myOrder_df[3,3]
myOrder_df[,3]
myOrder_df[3,]
myOrder_df[3]

#subset by name
myOrder_df$menuType

#subset by logical vectors
#equal, greater than, less than, greater or equal or less or equal
#< lesser than
#> greater than
#== equal to
#<= less than or equal to
#>= greater than or equal to

v <-c(2,3,4,5,6,5,6)
v
v1 <- v[v==5]
v1
df1 <- myOrder_df[myOrder_df$menuType == "liquid"]
df1
df1 <- myOrder_df[myOrder_df$menuType == "liquid",]
df1
df2 <- myOrder_df[myOrder_df$menuCost<3,]
df2
myOrder_df$menuType == "liquid"

#download dataset (tab delimited)
myData <- read.table("gapminder.txt", header = TRUE)
myData
head(myData, n=6)
head(myData)
#six lines is the default

#download csv file
read.csv("path_to_the_file")
dim(myData)
#overall object structure
str(myData)
#type of data 
typeof(myData)
#type of data in each colum
typeof(myData$country)
#data from 3rd colum
myData[3]
#data from both 3rd and 5th column
myData[c(3,5)]
#unique list of countries
unique(myData$country)
myData$country
myData
#data for the country Sweden
Sweden <- myData[myData$country == "Sweden",]
#data for countries with life expectancy < 70
life <- myData[myData$lifeExp < 70,] 
life
Sweden
#add a column with population in units of milions
Mil <- myData$pop/1000000
Combo <- c(myData, Mil)
Combo
myData$PopM <- myData$pop/10^6
