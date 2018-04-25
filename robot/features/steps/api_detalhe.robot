*** Settings ***

Documentation
...       Classe auxiliar do Robot para Demo:
...       Com a implementação da Consulta de API

Library  Collections
Library  requests

*** Variable ***
${URL_CARTOLA}      https://api.cartolafc.globo.com/mercado/destaques
${HTTP_OK}          200

*** Keywords ***
#Executa uma Request
Chamar a API usando GET
    ${result} =  get  ${URL_CARTOLA}
    Should Be Equal  ${result.status_code}  ${200}
    Set Test Variable   ${result}
    
#Exibe no Log do Robot o retorno do Json
Exibir no Log o apelido
    ${json} =  Set Variable  ${result.json()}
    :FOR  ${element}  IN  @{json}
    \    ${atleta} =  Get From Dictionary  ${element}  Atleta
    \    ${atleta_detalhe} =  Get From Dictionary  ${atleta}  apelido
    \    Log  ${atleta_detalhe}