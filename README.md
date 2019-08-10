# Qualis 2019 - preliminar 



Disponibilizo uma **tabela em Excel com os periódicos da área de economia** e as respectivas classificações do provável novo Qualis 2019 juntamente com a classificação ainda vigente (período 2013-2016). 
A planilha foi criada a partir de [um arquivo pdf que circulou pelas redes sociais](https://capes.gov.br/36-noticias/9735-nota-sobre-o-qualis) em meados de julho de 2019. 

O arquivo no formato `.xlsx` pode ser baixado diretamente neste link:   \n

- [**qualis_economia_2019.xlsx**](https://github.com/enoches/Qualis_2019_preliminar/raw/master/qualis_economia_2019.xlsx)   \n
- Versão: 0.1.1
- Atualizada em: 2019-ago-10

Esta pasta contém as informações e procedimentos necessários para recriar a planilha  *Qualis Economia 2019*. 
Com vistas à reprodutibilidade do resultado, o trabalho procurou seguir as recomendações do [Project TIER Protocol](https://www.projecttier.org/) e mais especificamente o [TIER Documentation Protocol v3.0 for R](https://github.com/ProjectTIER/ProjectTIER_R). 

Este projeto foi iniciado por [Enoch Filho](http://www.enochfilho.net/) como um exercício para praticar o manuseio, arrumação e transformação de dados com o uso do `R`, o `Git`, o `GitHub`, o `TIER Protocol`. 

O status é *work-in-progress*. 
Uma versão da planilha já está disponível. 
Não há garantias, mas é provável que haja melhorias, mudanças no código, documentação, etc. 
A comunidade é bem-vinda para revisar e aperfeiçoar o código e reutilizar o material. 

Aguardo [issues](https://github.com/enoches/Qualis_2019_preliminar/issues) e `pull requests`. 

Disclaimer: nessa versão da planilha (0.1.1) os dados foram pareados pelo ISSN. 
Várias revistas aparentemente tiveram seus ISSN alterados, então na próxima versão da planilha será preciso fazer também a junção pelos nomes das revistas, e assim tentar identificar os periódicos que faltam.


### Software utilizado

O software utilizado foi o R versão 3.6.0 e o RStudio 1.2.1335



## 1. Pastas e arquivos 


- O arquivo `README.md` com informações gerais (este arquivo). 
- Arquivo Qualis Economia 2019 - `qualis_economia_2019.xlsx`
- Dados Originais e Metadados - `dados-originais`
    + Metadados - `metadados`
        - Guia de Metadados - `guia de metadados.md`
        - Suplementos - `suplementos`
- Processamento e Análise - `processamento-e-analise`
    + Dados a importar - `dados-a-importar`
    + Arquivos com comandos - `arquivos-com-comandos`
    + Dados da Análise - `dados-da-analise`


## 2. Modificações nos arquivos para importação

O arquivo `Qualis-novos-1907_drv.txt` está na pasta `dados-a-importar/` e foi derivado do arquivo original `Qualis novos 1907.pdf` e que contém a novo Qualis 2019. 
Abri o arquivo original, em pdf, em um leitor de pdf e utilizei a opção "Salvar Como" txt (texto puro). 
O arquivo resultante se apresenta da seguinte forma: \n

```
----------------------- Page 1-----------------------

   ISSN                                     TITULO                                   ESTRATO 

  2237-5953    (RE) PENSANDO DIREITO                                                  B4 

  2469-4312    [IN] TRANSITION                                                        B2 

1981-030X      19&20 (RIO DE JANEIRO)                                                 B1 

```


## 3. Instruções para replicação


Basta rodar os scripts da pasta `processamento-e-analise/arquivos-com-comandos/`

Lorem ipsum lorem ipsum...

.