# Projeto de Automação de Testes - Seleção de Produtos

Este projeto tem como objetivo a automação de testes para validação das funcionalidades de busca e seleção de produtos do site da Magazine Luiza.

O projeto foi desenvolvido utilizando o Robot Framework com Selenium e está estruturado para garantir boas práticas de automação e organização de código.

## Pré-requisitos


Para executar os testes deste projeto, é necessário ter as seguintes dependências instaladas:

- Python 3.12
- Robot Framework 7.0
- Selenium Library 6.3.0

Esses requisitos podem ser instalados utilizando o arquivo `requirements.txt` com o seguinte comando:

pip install -r requirements.txt

# Pré-condição

## Definir o Termo de Busca

Antes de rodar os testes, é importante que você configure a variável ${TERMO_DE_BUSCA} com um valor adequado. Isso será necessário para simular a pesquisa de produtos no site.

Por exemplo, se você quiser testar a busca por "notebook", basta definir a variável.
