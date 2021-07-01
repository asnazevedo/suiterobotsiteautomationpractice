*** Settings ***
Resource         ../resource/Resource.robot
Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Case ***
Caso de teste 01: Pesquisar produto existente
    Acessar pagina do site
    Digitar o nome de produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
#     Conferir se o produto "Blouse" foi listado no site

# Caso de teste 02: Pesquisar produto não existente
#     Acessar pagina do site
#     Digitar o nome de produto "produtoNãoExistente" no campo de Pesquisar
#     Vou clicar no botão pesquisar
#     Conferir mensagem de erro " No results were found for your search "produtoNãoExistente""
# *** Keywords ***