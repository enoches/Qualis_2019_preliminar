# Este script monta a tabela com os dados preliminares do novo Qualis 2019
# a partit do pdf de 441 páginas que circulou na internet e salva num arquivo
# `novo_qualis_preliminar.rds`
# O pdf foi salvo com o txt derivado lido no R. 

# pacotes ----

library(here)
library(readr)
library(dplyr)
library(stringr)
library(purrr) # usei apenas o as_vector()

# Importa os dados: ----
# Retirar a 1ª linha, pois tudo venho como um único vetor de caracteres:
# ISSN                       TITULO                     ESTRATO

# novo_qualis_preliminar <- novo_qualis_preliminar[-1, ]

novo_qualis_preliminar <- read_tsv(
  file = here(
    "processamento-e-analise",
    "dados-a-importar",
    "Qualis-novos-1907_drv.txt"
  ),
  col_names = FALSE, # considera que não tem nome de coluna
  comment = "-----", # retira as marcações de página do arquivo txt
  skip_empty_rows = TRUE # opção padrão importante aqui
) %>%
  dplyr::slice(-1L) # retira a linha que seria o cabeçalho

# Arruma os dados ----

## Separar as colunas: ----
novo_qualis_preliminar <-
  novo_qualis_preliminar %>%
  mutate(
    ISSN_2019 = str_sub(as_vector(.), start = 1L, end = 9L),
    TITULO_2019 = str_sub(as_vector(.), start = 10L),
    ESTRATO_2019 = str_sub(as_vector(.), -2L, -1L)
  ) %>%
  select(ISSN_2019, TITULO_2019, ESTRATO_2019)

## Cuidar do Estrato C ----
novo_qualis_preliminar <-
  novo_qualis_preliminar %>% mutate(ESTRATO_2019 = case_when(
    str_sub(ESTRATO_2019, -1L) == "C" ~ "C",
    TRUE ~ ESTRATO_2019
  ))

## Agora, cuidar dos Títulos dos periódicos ----
# dar um jeito de retirar do Título os os estratos.

novo_qualis_preliminar <-
  novo_qualis_preliminar %>% mutate(TITULO_2019 = case_when(
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


## Retirar o excesso de espaços em branco, caso existam: ----
novo_qualis_preliminar <-
  novo_qualis_preliminar %>% mutate(
    ISSN_2019 = str_squish(ISSN_2019),
    TITULO_2019 = str_squish(TITULO_2019),
    ESTRATO_2019 = str_squish(ESTRATO_2019)
  )


## Transformar a variável ESTRATO_2019 em fatores (categorias) ----

# novo_qualis_preliminar %>% distinct(ESTRATO_2019) 

novo_qualis_preliminar <- novo_qualis_preliminar %>% 
  arrange(ESTRATO_2019) %>% 
  mutate(ESTRATO_2019 = as_factor(ESTRATO_2019)) %>% 
  arrange(TITULO_2019)


# Salva em `dados-da-analise/` ----

readr::write_rds(novo_qualis_preliminar, 
                 path = here("processamento-e-analise", 
                             "dados-da-analise", 
                             "novo_qualis_preliminar.rds")) 
