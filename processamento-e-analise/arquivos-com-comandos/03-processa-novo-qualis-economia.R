# Este scipt utiliza o joins para encontrar o novo qualis de economia 2019


library(readr)
library(here)
library(dplyr)

novo_qualis <- readr::read_rds(path = here("processamento-e-analise", "dados-da-analise", "novo_qualis.rds"))

qualis_eco_2016 <- readr::read_rds(here("processamento-e-analise", "dados-da-analise", "qualis_eco_2016.rds"))
