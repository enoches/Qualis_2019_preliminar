# Este script cria o arquivo em Excel com a lista geral preliminar dos periódicos
#  Qualis/CAPES 2019. Em resumo, é o pdf de 400 páginas em forma de planilha eletrônica.

# Pacotes ----

library(readr)
library(here)
library(writexl)

# Prepara README da planilha ----

README <- data.frame(
  README = c(
    "Classificação preliminar 2019 - Qualis geral para todas as áreas",
    "",
    "Versão em arquivo de planilha Excel daquele pdf de 400+ páginas.",
    "Os dados estão na outra aba!",
    "",
    "A planilha tem três colunas (ISSN_2019, TITULO, 2019	ESTRATO_2019)",
    "e 22.047 linhas, incluindo o cabeçalho.",
    "",
    "- Versão: 1.0.0",
    "- Atualizada em (aaaa-mm-dd): 2019-08-27",
    "",
    "INFORMAÇÕES e talvez uma versão mais atualizada (quando houver):",
    "https://github.com/enoches/Qualis_2019_preliminar"
  )
)

# Pega a planilha ----
novo_qualis_preliminar <- read_rds(here::here(
  "processamento-e-analise",
  "dados-da-analise",
  "novo_qualis_preliminar.rds"
))

# Retira a variável auxiliar:

aux_novo_qualis <- 
novo_qualis_preliminar %>% select(-ano_ref)

# E monta o arquivo ----

write_xlsx(list(README, aux_novo_qualis),
  path = here::here("qualis_geral_2019.xlsx")
)

# Remove do ambiente os objetos utilizados
rm(README, novo_qualis_preliminar, aux_novo_qualis) 
