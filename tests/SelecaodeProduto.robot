*** Settings ***
Resource    ../config.robot
Resource    ../resources/SelecaodeProduto.resource

Library    String

*** Variables ***
${TERMO_DE_BUSCA}       iphone


*** Test Cases ***

Cenário 01: O usuário realiza uma busca e seleciona um produto
    [Tags]    Seleção de Produtos
    Given que o usuário acessa a página inicial do Magazine Luiza
    When o usuário digita "${TERMO_DE_BUSCA}" na barra de busca
    And o usuário clica no ícone de pesquisa
    Then o site deve exibir uma lista de produtos relacionados ao termo "${TERMO_DE_BUSCA}"
    When o usuário clica no primeiro item da lista
    Then o sistema deve exibir a página de detalhes do produto correspondente

