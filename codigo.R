library(tidyverse)

Runas <- rep(c('conquistador', 'pressione', 'ritmo fatal'), 4)
Runas

Dia <- as.Date(c(rep('2021-01-02',3),
                 rep('2021-04-05',3),
                 rep('2021-03-04',3),
                 rep('2021-02-03',3)))
Dia

Abates <- c(12, 08, 14, 12, 08, 10, 06, 08, 09, 10, 11, 11)

LOL <- tibble(Runas, Dia, Abates)
View(LOL)
