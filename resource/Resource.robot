*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}        http://automationpractice.com
${BROWSER}    chrome

*** Keywords ***

### Setup and TearDown ###
Abrir navegador
    Open Browser  about:blank  ${BROWSER}

Fechar navegador
    Close Browser

#### Steps casos de teste ###
Acessar pagina do site
    Go To  ${URL}   
    Title Should be  My Store

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text  id=search_query_top  ${PRODUTO}

Clicar no botão pesquisar
    Click Element  name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site