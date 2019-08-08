# Este script, até aqui é o resultado das tentativas de leitura do arquivo pdf de
# 400+ páginas...

# pacotes

library(here)
library(readr)
library(dplyr)
library(stringr)
library(purrr) # usei apenas o as_vector()

# Primerio Ler o arquivo:
# Retirar a 1ª linha, pois tudo venho como um único vetor de caracteres:
# ISSN                       TITULO                     ESTRATO

# novo_qualis <- novo_qualis[-1, ]

novo_qualis <- read_tsv(
  file = here(
    "processamento-e-analise",
    "dados-a-importar",
    "Qualis-novos-1907_drv.txt"
  ),
  col_names = FALSE, # default = TRUE
  comment = "-----", # default = ""
  skip_empty_rows = TRUE
) %>%
  dplyr::slice(-1L)


novo_qualis <-
  novo_qualis %>%
  mutate(
    ISSN_2019 = str_sub(as_vector(.), start = 1L, end = 9L),
    TITULO_2019 = str_sub(as_vector(.), start = 10L),
    ESTRATO_2019 = str_sub(as_vector(.), -2L, -1L)
  ) %>%
  select(ISSN_2019, TITULO_2019, ESTRATO_2019)

# Cuidar do Estrato C
novo_qualis <-
  novo_qualis %>% mutate(ESTRATO_2019 = case_when(
    str_sub(ESTRATO_2019, -1L) == "C" ~ "C",
    TRUE ~ ESTRATO_2019
  ))

# Agora, cuidar dos Títulos dos periódicos. dar um jeito de retirar do Título os os estratos.

novo_qualis <-
  novo_qualis %>% mutate(TITULO_2019 = case_when(
    str_sub(TITULO_2019, start = -1L) == "C" ~ str_sub(TITULO_2019, end = -2L),
    str_sub(TITULO_2019, start = -2L) == "A1" ~ str_sub(TITULO_2019, end = -3L),
    str_sub(TITULO_2019, start = -2L) == "A2" ~ str_sub(TITULO_2019, end = -3L),
    str_sub(TITULO_2019, start = -2L) == "A3" ~ str_sub(TITULO_2019, end = -3L),
    str_sub(TITULO_2019, start = -2L) == "A4" ~ str_sub(TITULO_2019, end = -3L),
    str_sub(TITULO_2019, start = -2L) == "B1" ~ str_sub(TITULO_2019, end = -3L),
    str_sub(TITULO_2019, start = -2L) == "B2" ~ str_sub(TITULO_2019, end = -3L),
    str_sub(TITULO_2019, start = -2L) == "B3" ~ str_sub(TITULO_2019, end = -3L),
    str_sub(TITULO_2019, start = -2L) == "B4" ~ str_sub(TITULO_2019, end = -3L),
    str_sub(TITULO_2019, start = -2L) == "NP" ~ str_sub(TITULO_2019, end = -3L),
    TRUE ~ TITULO_2019
  ))


# Passar o squish
novo_qualis <-
  novo_qualis %>% mutate(
    ISSN_2019 = str_squish(ISSN_2019),
    TITULO_2019 = str_squish(TITULO_2019),
    ESTRATO_2019 = str_squish(ESTRATO_2019)
  )

# Salvar o banco de dados

readr::write_rds(novo_qualis, path = here("processamento-e-analise", "dados-da-analise", "novo_qualis.rds"))
