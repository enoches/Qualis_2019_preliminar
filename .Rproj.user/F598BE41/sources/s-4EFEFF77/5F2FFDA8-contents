# Este script utiliza o joins para encontrar o novo qualis (2019) 
# das revistas da área de economia


library(readr)
library(here)
library(dplyr)
# library(janitor)


# Importar os dados ----

novo_qualis_preliminar <- readr::read_rds(path = here("processamento-e-analise", "dados-da-analise", "novo_qualis_preliminar.rds"))

qualis_economia_2016 <- readr::read_rds(here("processamento-e-analise", "dados-da-analise", "qualis_economia_2016.rds"))


# novo qualis economia ----

# Peguei a lista de revistas da área de economia da última avaliação disponível (2013-2016) e relacionei com a nova lista geral que saiu em meados de julho (2019), utilizando o ISSN como identificador.

# Essa tabela derivada não inclui os períódicos que provavelmente foram (serão?) incluídos na avaliação de 2019 não configuravam na lista de 2016, ou que mudaram o ISSN, entre outros problemas 


#TODO:

# [x] Parear o a lista de 2016 (`qualis_economia_2016`) e parear com a lsta de 2019 (`novo_qualis_preliminar`) usando o ISSN como chave: dplyr::left_join

# [] Fazer o mesmo pareamento utilizando o nome da revista como chave e juntar.


# Joins ----

qualis_economia_2019 <- qualis_economia_2016 %>% 
  left_join(novo_qualis_preliminar, by = c("ISSN_2016" = "ISSN_2019")) %>% 
  select(ISSN_2016, TITULO_2016, TITULO_2019, ESTRATO_2016, ESTRATO_2019) %>% 
  arrange(ESTRATO_2019)



# qualis_economia_2016 %>% 
#   inner_join(novo_qualis_preliminar, by = c("ISSN_2016" = "ISSN_2019")) %>% 
#   View("inner-ISSN-01")
# 
# qualis_economia_2016 %>% 
#   left_join(novo_qualis_preliminar, by = c("TITULO_2016" = "TITULO_2019")) %>% 
#   View("left-TIT-01")
# 
# qualis_economia_2016 %>% 
#   inner_join(novo_qualis_preliminar, by = c("TITULO_2016" = "TITULO_2019")) %>% 
#   View("inner-TIT-01")
# 
# qualis_economia_2016 %>% 
#   inner_join(novo_qualis_preliminar, 
#              by = c("ISSN_2016" = "ISSN_2019") & c("TITULO_2016" = "TITULO_2019")
#              ) %>% 
#   View("teste")
# 
# # An anti join will return all of the rows from the first table where there are not matching values from the second. 
# 
# qualis_economia_2016 %>% 
#   anti_join(novo_qualis_preliminar, by = c("ISSN_2016" = "ISSN_2019")) %>% 
#   View("anti-ISSN-01")
# 
# qualis_economia_2016 %>% 
#   anti_join(novo_qualis_preliminar, by = c("TITULO_2016" = "TITULO_2019")) %>% 
#   View("anti-TIT-01")
# 
# 
# dplyr::distinct() 
# janitor::get_dupes()
# stringr::str_detect()

# Salva em `dados-da-analise/`: ----
readr::write_rds(
  qualis_economia_2019,
  path = here(
    "processamento-e-analise",
    "dados-da-analise",
    "qualis_economia_2019.rds"
  )
)
