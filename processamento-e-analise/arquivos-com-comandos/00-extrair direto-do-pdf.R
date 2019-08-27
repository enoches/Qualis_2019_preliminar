# ISSUE #4 - Tentar carregar os dados diretamente do pdf "Qualis novos 1907.pdf" 
# para substituir a maneira atual / inicial, que é abrindo o pdf 
# e salvando como texto puro.

# Não consegui instalar e carregar o pacote `tabulizer` então vamos tentar com
# o `pdftools`.


library(tidyverse)
library(here)
library(pdftools)

pdf_file <- here::here("dados-originais", "Qualis novos 1907.pdf")
text <- pdf_text(pdf_file)


# Primeiro fazer testes com 1 página. Até agora consegui o seguinte:
text[1] %>%  str_split("\r\n") %>% tibble() %>% pull() 

# Já deu pra notar que o banco vem mais "sujo" do que a primeira extratégia 
# que foi salvar o pdf pra txt à mão.
