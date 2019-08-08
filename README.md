# Qualis 2019 - preliminar 

A planilha preliminar da classificação Qualis 2019 dos periódicos científicos extraída a partir daquele pdf de quatrocentas páginas!
2019 - preliminar"

Peguei a lista de revistas da área da última avaliação disponível (2013-2016) no site *[2], relacionei e filtrei com essa nova lista que saiu semana passada (2019), utilizando o ISSN como identificador.
A tabela resultante tem 1547 entradas.

Um total de 492 revistas não foram encontradas no novo estrato, enquanto outras 30 foram identificadas mas não pontuaram (NP). 
Essa tabela derivada não inclui os períódicos que provavelmente foram (serão?) incluídos na avaliação de 2019 não configuravam na lista de 2016. 

Att, 

Enoch Sousa Filho 

www.enochfilho.net 

28/07/2019 

-----
*[1] https://capes.gov.br/36-noticias/9735-nota-sobre-o-qualis 

*[2] https://sucupira.capes.gov.br/sucupira/public/consultas/coleta/veiculoPublicacaoQualis/listaConsultaGeralPeriodicos.jsf 


### state what statistical software or other computer programs are 
needed to run the command files. 

O software utilizado foi o R versão 3.6.0 e o RStudio 1.2.1335


## 1. Pastas e arquivos 

Este repositório contém as seguintes pastas e arquivos:

- An electronic copy of your complete final paper. Often, this means:
	+ An `.Rmd` file with all the text and code to produce the final paper
	+ A knitted HTML or PDF file of the complete paper
- The `README.md` file for your repository
- Dados Originais e Metadados - `dados-originais`
    + Metadados - `metadados`
        - Guia de Metadados - `guia de metadados.md`
        - Suplementos - `suplementos`
- Processamento e Análise - `processamento-e-analise`
    + Dados a importar - `dados-a-importar`
    + Arquivos com comandos - `arquivos-com-comandos`
    + Dados da Análise - `dados-da-analise`


## 2. Modificações nos arquivos para importação

Nesta seção descrevo as modificações feitas nos arquivos da pasta `dados-a-importar/`, criados a partir dos dados originais (pasta `dados-originais/`).

O arquivo `Qualis-novos-1907_drv.txt` foi derivado do arquivo `Qualis novos 1907.pdf`. 
Abri o arquivo original, em pdf, em um leitor de pdf e utilizei a opção "Salvar Como" txt (texto puro). 
O arquivo resultante apresenta vários traços para indicar cada página, da seguinte forma:
`----------------------- Page 1-----------------------`


## 3. Instruções para replicar o estudo

Lorem ipsum lorem ipsum...
