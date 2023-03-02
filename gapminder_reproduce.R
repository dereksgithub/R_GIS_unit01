# import data and libs ----------------------------------------------------
library(dplyr)
library(tidyverse)
library("ggplot2")
library(gapminder)
# gapminder01 -------------------------------------------------------------



# display first 10 rows
gapminder

ggplot(gapminder, aes(x = continent, y = lifeExp)) +
  geom_boxplot(outlier.colour = "hotpink") +
  geom_jitter(position = position_jitter(width = 0.1, height = 0), alpha = 1/4)

gapminder %>%
  filter(year == 1905) %>% 
  group_split(year)
#
plots <- map(by_year,~ gap_plot(.x))

