# Este script organiza o banco de dados com o Qualis da 
# Área de Economia 2012-2016 e salva como `qualis_eco_2016.rds`

# Pacotes ----

library(here)
library(readr)
library(forcats)
library(dplyr)


# Importa dados ----

qualis_eco_2016 <- read_tsv(
  file = here(
    "dados-originais",
    "classificacoes_publicadas_economia_2017_1496941693861.xls"
  ),
  locale = locale(encoding = "ISO-8859-1")
)


# Arruma ----

qualis_eco_2016 <- qualis_eco_2016 %>%
  rename(ISSN_2016 = ISSN,
         TITULO_2016 = `Título`,
         ESTRATO_2016 = Estrato)

qualis_eco_2016 <- qualis_eco_2016 %>% 
  arrange(ESTRATO_2016) %>% 
  mutate(ESTRATO_2016 = as_factor(ESTRATO_2016)) %>% 
  arrange(TITULO_2016)

# Salva em `dados-da-analise/`: ----
readr::write_rds(
  qualis_eco_2016,
  path = here(
    "processamento-e-analise",
    "dados-da-analise",
    "qualis_eco_2016.rds"
  ),
  encoding = "UTF-8"
)


# problema no encoding. Ver:
# https://github.com/tidyverse/readr/issues/752
# https://github.com/tidyverse/readr/issues/564

# Outros:
#qualis_eco_2016 %>% distinct(ESTRATO_2016) %>% arrange(ESTRATO_2016)
# c("A1", "A2", "B1", "B2", "B3", "B4", "B5")
# ?lvls_reorder()
# sort(levels(qualis_eco_2016$ESTRATO_2016))
# order(levels(qualis_eco_2016$ESTRATO_2016)) 