# Script for data visualization portion of SWC lesson
# Daren Card
# UTA SWC Workshop
# 2017-11-12

# install.packages("ggplot2")

library(ggplot2)

gapminder <- read.table("~/Desktop/Daren_Dropbox/Dropbox/Shared_Folders/SWC_fall2017/Data/gapminder.txt", header=TRUE)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
    geom_point() 

# Modify the example so that the figures shows how life expectancy changes over time

str(gapminder)

ggplot(data = gapminder, aes(x = year, y = lifeExp)) +
    geom_point() 

# Modify this example so that the data points are colored by country

ggplot(data = gapminder, aes(x = year, y = lifeExp, color = country)) +
    geom_point(show.legend = FALSE)

# adding layers

ggplot(data = gapminder, aes(x = year, y = lifeExp, color = country)) +
    geom_point() + 
    geom_line() + 
    theme(legend.position="none")

# let's make the lines all one color

ggplot(data = gapminder, aes(x = year, y = lifeExp)) +
    geom_point(aes(color = country)) + 
    geom_line(color = "black") + 
    theme(legend.position="none")

# adding text

ggplot(data = gapminder, aes(x = year, y = lifeExp, color = country)) +
    geom_point() +
    theme(legend.position="none") +
    labs(x = "Year",
         y = "Life Expectancy",
         title = "Figure 1.")

# manipulate scales (i.e., transformation)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
    geom_point() + 
    scale_x_log10()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
    geom_point() + 
    scale_x_log10() +
    geom_smooth(method="loess")

# faceting the data

starts.with <- substr(gapminder$country, start = 1, stop = 1)

gapminder[ , ]
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]

png()
ggplot(data = az.countries, aes(x = year, y = lifeExp, color = country)) +
    geom_point() +
    theme(legend.position="none") +
    facet_wrap( ~ country)


# supplementary "cool" stuff 
# emulating: https://www.gapminder.org/tools/#_chart-type=bubbles

# install.packages("dplyr")

library(dplyr)
bubble <- gapminder %>%
    filter(year == 2007) %>%
    ggplot(aes(x = gdpPercap,
               y = lifeExp,
               color = continent,
               size = pop)) +
    geom_point() +
    labs(
        x = "Income",
        y = "Life Expectancy"
    )
bubble

# animate plot to show time series
for (yr in unique(gapminder$year)) {
    bubble <- gapminder %>%
        filter(year == yr) %>%
        ggplot(aes(x = gdpPercap,
                   y = lifeExp,
                   color = continent,
                   size = pop)) +
        geom_point() +
        labs(
            x = "Income",
            y = "Life Expectancy",
            title = yr
        )
    plot(bubble)
    Sys.sleep(2)
}

# install.packages("plotly")
library(plotly)

# make plot interactive
ggplotly(bubble)


