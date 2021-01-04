library(tidyverse)

#CRIANDO COLUNAS, ELEMENTOS E UM DATAFRAME
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

# See and Change column names
colnames(LOL)
print(LOL[1:3, c('Runes', 'Day')])
LOL <- LOL %>% 
  rename(Runes=Runas) %>% 
  rename(Day=Dia) %>% 
  rename(Kills=Abates)

#create a new column
LOL <- LOL %>% 
  mutate(Assist= c(15, 14, 08, 15, 14, 17, 18, 14, 12, 13, 11, 12),
         Death=c(04, 08, 04, 03, 01, 03, 02, 05, 07, 02, 03, 03),
          AMA=Kills+Assist/Death) %>% 
  glimpse()

#Delete a column
LOL <- LOL %>% 
  select("Runes", "Day", "Kills",  "Assist", "Death", "AMA")
View(LOL)
