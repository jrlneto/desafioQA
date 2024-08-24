*** Settings **
Resource    ../config.robot
Library    String

*** Variables ***
${BT_BUSCAR}                          css=svg[data-testid="search-submit"]
${BUSCAR}                             xpath=//input[contains(@type,'search')]
${PRODUTO_LISTA}                      xpath=//div[@data-testid='product-list']/ul/li[1]



*** Keywords ***
que o usuário acessa a página inicial do Magazine Luiza
    Abrir Navegador Para Teste
    Capture Page Screenshot

o usuário digita "${PRODUTO}" na barra de busca
    Input Text                       ${BUSCAR}    ${PRODUTO}
    Capture Page Screenshot

o usuário clica no ícone de pesquisa
    Wait Until Element Is Visible    ${BT_BUSCAR}
    Click Element                    ${BT_BUSCAR}
    Sleep    2
    Capture Page Screenshot

o site deve exibir uma lista de produtos relacionados ao termo "${PRODUTO}"
    Sleep    3
    ${VALIDAR_TITULO}=    Get Text             xpath=//h1[@data-testid='main-title']
    ${TEXTO_S}=   Convert To Lower Case   ${VALIDAR_TITULO}
    ${TEXTO_M}=   Convert To Lower Case   ${PRODUTO}
    Should Be Equal As Strings    ${TEXTO_S}    ${TEXTO_M}    Termos devem ser iguais
    Log    ${TEXTO_S}
    Log    ${TEXTO_M}
    Wait Until Element Is Visible       ${PRODUTO_LISTA}
    Capture Page Screenshot

o usuário clica no primeiro item da lista
    Click Element                       ${PRODUTO_LISTA}

o sistema deve exibir a página de detalhes do produto correspondente
    Wait Until Element Is Visible       xpath=//h2[@data-testid='product-detail-label']
    Capture Page Screenshot
    Sleep    2
    Scroll Element Into View            xpath=//div[@data-testid='product-detail']
    Capture Page Screenshot
