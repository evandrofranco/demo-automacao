## Author:Evandro Franco
# DEMO - Automação de Testes em Python (Behave e Selenium)

Este projeto é uma demo de automação com Behave, usando o google.com 

## Estrutura de Pastas - BEHAVE

```
demo-automacao
└───features: Pasta com os BDDs
│   └───steps: Pasta com implementação Python
│   │   │    consulta.py: Código da Implementação do BDD
│   │   consulta.feature: BDD com o fluxo principal
│   run_behave.bat - Arquivo para execução no Windows
│   run_behave.sh  - Arquivo para execução no Linux
```

## Pré-Requisitos

1 - Baixar e instalar/extrair o [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/getting-started);

2 - Adicionar o chromedriver no path do S.O.

3 - Instalar as biblioteacas Python:

    pip install -r requirements.txt

## Execução Behave

Executar o script na raiz do projeto (sh ou bat):

    run_behave