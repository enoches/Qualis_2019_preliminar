# Qualis 2019 - preliminar 


Disponibilizo uma **tabela em Excel com os periódicos da área de economia** e as respectivas classificações do provável novo Qualis 2019 juntamente com a classificação ainda vigente (período 2013-2016). 
A planilha foi criada a partir de [um arquivo pdf que circulou pelas redes sociais](https://capes.gov.br/36-noticias/9735-nota-sobre-o-qualis) em meados de julho de 2019. 

O arquivo no formato `.xlsx` pode ser baixado diretamente neste link: 
- 
- Versão: 0.1.1
- Atualizada em: 2019-ago-10


Esta pasta contém as informações e procedimentos necessários para criar a planilha Novo Qualis 2019 para a área de Economia. Com vistas à reprodutibilidade do resultado, a trabalho seguiu as diretrizes do [TIER Protocol](https://www.projecttier.org/) e mais especificamente o [TIER Documentation Protocol v3.0 for R](https://github.com/ProjectTIER/ProjectTIER_R). 

Este projeto foi iniciado por [Enoch Filho](http://www.enochfilho.net/) como um exercício para praticar o `R`, o `Git`, o `GitHub`, o `TIER Protocol`. 
O status é *work-in-progress* e fica aberto à colaboração, seja via [issues](https://github.com/enoches/Qualis_2019_preliminar/issues), seja submetendo `pull requests`. 
Uma versão da planilha já está disponível, mas espera-se que haja melhorias, mudanças no código, documentação, etc.

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


## 3. Instruções para replicar o estudo


Basta rodar os scripts da pasta `processamento-e-analise/arquivos-com-comandos/`

Lorem ipsum lorem ipsum...

.