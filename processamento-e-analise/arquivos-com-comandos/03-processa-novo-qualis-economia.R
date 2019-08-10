# Este scipt utiliza o joins para encontrar o novo qualis de economia 2019


library(readr)
library(here)
library(dplyr)


# Estratégia: 
## Info 

# Peguei a lista de revistas da área da última avaliação disponível (2013-2016) no site, relacionei e filtrei com essa nova lista que saiu semana passada (2019), utilizando o ISSN como identificador.
# A tabela resultante tem 1547 entradas.
# 
# Um total de 492 revistas não foram encontradas no novo estrato, enquanto outras 30 foram identificadas mas não pontuaram (NP). 
# Essa tabela derivada não inclui os períódicos que provavelmente foram (serão?) incluídos na avaliação de 2019 não configuravam na lista de 2016. 


novo_qualis_preliminar <- readr::read_rds(path = here("processamento-e-analise", "dados-da-analise", "novo_qualis_preliminar.rds"))

qualis_eco_2016 <- readr::read_rds(here("processamento-e-analise", "dados-da-analise", "qualis_eco_2016.rds"))
