*** Settings ***

Documentation
...       Classe principal do Robot para Demo:
...       Consulta na API do Cartola.com

Resource    steps/BDD.robot
Resource    steps/api_detalhe.robot

*** Test Case ***
Consulta Api
    When Acesso a API do Cartola
    Then Valido o retorno

*** Keywords ***
Acesso a API do Cartola
    Chamar a API usando GET

Valido o retorno
    Exibir no Log o apelido