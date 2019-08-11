# Este script cria o arquivo em Excel com a lista dos periódicos da área de
# economia e as respectivas classificações Qualis 2019 e Qualis 2016

# Pacotes ----

library(readr)
library(here)
library(writexl)

# Prepara README da planilha ---- 

README <- data.frame(
  README = c("Classificação Qualis dos periódicos de Economia para 2019 - Preliminar", 
             "",
             "Planilha construída a partir daquele pdf de 400+ páginas.",
             "Os dados estão na outra aba!",
             "",
             "- Versão: 0.1.1",
             "- Atualizada em: 2019-ago-10",
             "",
             "INFORMAÇÕES e talvez uma versão mais atualizada (quando houver):",
            "https://github.com/enoches/Qualis_2019_preliminar")
  )

# Pega a planilha ----
qualis_economia_2019 <- readr::read_rds(here("processamento-e-analise", "dados-da-analise", "qualis_economia_2019.rds"))

# E monta o arquivo ----

writexl::write_xlsx(list(README, qualis_economia_2019), 
                    path = here("qualis_economia_2019.xlsx"),
                    )
