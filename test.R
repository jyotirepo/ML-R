library(tidyverse)
library(skimr)
library(broom)
library(jmv)

View(starwars)


glimpse(starwars)

skim(starwars)


cor1 <- cor.test(starwars$height,starwars$mass)
plot(starwars$height,starwars$mass)


sw_nj <- filter(starwars, name != "Jabba Desilijic Tiure")

plot(sw_nj$height,sw_nj$mass)

cor2 <- cor.test(sw_nj$height,sw_nj$mass)

cor1_t <- tidy(cor1)
cor2_t <- tidy(cor2)

corrMatrix(sw_nj,vars = vars(height,mass),
           ci = T,
           plots = T,
           plotDens = T,
           plotStats = T)
