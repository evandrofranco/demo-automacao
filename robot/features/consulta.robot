*** Settings ***

Documentation
...       Classe principal do Robot para Demo Web:
...       Consulta no Google.com

Resource    steps/BDD.robot
Resource    steps/consulta_detalhe.robot

*** Test Case ***
Consulta Google
    Given Acesso o google.com
    When Executo uma consulta
    Then Valido o retorno

*** Keywords ***
Acesso o google.com
    Abrir Browser na homepage do Google

Executo uma consulta
    Pesquiso um pais no Google
    Abro a wikipedia

Valido o retorno
    Valido que a pesquisa funcionou
    Encerra o teste