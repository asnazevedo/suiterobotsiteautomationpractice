*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            http://automationpractice.com
${BROWSER}        chrome

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
    wait until Element is visible  css=#center_column > h1
    Title should be   	         Search - My Store
    Page Should contain Image    xpath=//*[@id="center_column"]//*[@src="http://automationpractice.com/img/p/7/7-home_default.jpg"]
    Page Should contain link     xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]     

Conferir mensagem de erro " No results were found for your search "${PRODUTO}""                            
      #wait until Element is visible    xpath=//*[@id="center_column"]/p[contains(text(),"${PRODUTO}")]
      Switch Window      xpath=//*[@id="center_column"]/p]
      Handle Alert