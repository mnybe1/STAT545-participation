library("tidyverse")
library("gapminder")

#Pair programming/ pair coding - translating different coding languages or from "english" to a coding language
gapminder
write_csv(gapminder, './gapminder.csv') #Export a csv from R to make sharing data easier
view(gapminder)

#Calculate mean life Exp per continent
gapminder_sum <- gapminder %>%
  group_by(continent) %>%
  summarise(ave_lifeExp = mean(lifeExp))

view(gapminder_sum)
write_csv(gapminder_sum, './gapminder_sum.csv')

gapminder_sum %>%
  ggplot(aes(x = continent, y= ave_lifeExp))+
  geom_point() +
  theme_bw()
