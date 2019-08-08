# Aqui eu vou trabalhar na lista da Qualis de Economia 2012-2016

library(here)
library(readr)



qualis_eco_2016 <- read_tsv(file = here("dados-originais", "classificacoes_publicadas_economia_2017_1496941693861.xls"), locale = locale(encoding = "ISO-8859-1"))

# Salvar:

readr::write_rds(qualis_eco_2016, path = here("processamento-e-analise", "dados-da-analise", "qualis_eco_2016.rds"), encoding = "UTF-8")



# problema no encoding. Ver:
# https://github.com/tidyverse/readr/issues/752
# https://github.com/tidyverse/readr/issues/564
