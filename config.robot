*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    DateTime

*** Variables ***
${URL}     https://www.magazineluiza.com.br/
${BROWSER}    chrome


*** Keywords ***

Abrir Navegador Para Teste
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close Browser