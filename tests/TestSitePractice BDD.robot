*** Settings ***
Resource     ../resource/Resource.robot
Suite Setup
Test Setup
Test Teardown
Suite Teardown

*** Test Case ***
Cenário 01: Pesquisar produto existente
    Dado que estou na pagina home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então  o produto "Blouse" deve ser listado na página de resultado da busca

Cenário 02: Pesquisar produto não existente
    Dado que estou na pagina home do site
    Quando eu pesquisar pelo produto "produtoNão existente"
    Então  a página deve exibir a mensagem "No results were found for your search "produtoNãoExistente""

*** Keywords ***