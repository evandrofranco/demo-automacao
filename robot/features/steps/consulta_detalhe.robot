*** Settings ***

Documentation
...       Classe auxiliar do Robot para Demo Web:
...       Com a implementação do BDD para navegacao no Google

Library           Selenium2Library

*** Variable ***
#   Valiaveis do navegador
${BROWSER}         Chrome
${HOME URL}        https://www.google.com.br
${DELAY}           1
${TITULO}          Google
#   Valiaveis do caso de teste
${ID_CAMPO_TXT}             lst-ib
${VAL_CAMPO_TXT}            Brasil
${CSS_WIKIPEDIA}            css:\#rso > div:nth-child(2) > div > div:nth-child(1) > div > div > h3 > a
${ID_TIT_WIKI}              firstHeading

*** Keywords ***
# Abre navegador e maximiza o browser
Abrir Browser na homepage do Google
    Open Browser    ${HOME URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Conferir home

# Verifica a tag title da pagina
Conferir home
    Title Should Be    ${TITULO}

# Pesquisa o pais no google e abre a wikipedia
Pesquiso um pais no Google
    Input Text      ${ID_CAMPO_TXT}     ${VAL_CAMPO_TXT}
    Submit Form
    Sleep    ${DELAY}

Abro a wikipedia
    Click Element    ${CSS_WIKIPEDIA}

Valido que a pesquisa funcionou
    ${VALOR_TITULO}=    Get Text    ${ID_TIT_WIKI}
    Should Be Equal    ${VAL_CAMPO_TXT}     ${VALOR_TITULO}

Encerra o teste
    Close Browser