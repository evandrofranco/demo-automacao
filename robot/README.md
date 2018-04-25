## Author:Evandro Franco
# DEMO - Automação de Testes em Python (Selenium e Robot)

Este projeto é uma demo de automação com Robot, usando o google.com 

## Estrutura de Pastas - ROBOT

```
demo-automacao
└───features: Pasta com os BDDs
│   └───steps: Pasta com implementação dos Robot's
│   │   │    api_detalhe: Código com implementação do Robot para API
│   │   │    BDD.robot: Código para conversão BDD do Robot
│   │   │    consulta_detalhe.robot: Código com implementação do Robot para Web
│   │   consulta.robot: BDD com o fluxo para teste Web
│   │   api.robot: BDD com o fluxo para teste de API
└───target: Pasta com os relatórios gerados pelo Robot
│   run_robot.bat - Arquivo para execução no Windows
│   run_robot.sh  - Arquivo para execução no Linux
```

## Pré-Requisitos

1 - Baixar e instalar/extrair o [chromedriver](https://sites.google.com/a/chromium.org/chromedriver/getting-started);

2 - Adicionar o chromedriver no path do S.O.

3 - Instalar as biblioteacas Python:

    pip install -r requirements.txt

## Execução Robot

Executar o script na raiz do projeto (sh ou bat):

    run_robot
