Feature: Consultar no Google

    Scenario Outline: Consulta no Google
      Given Acesso o google.com
      When Executo uma consulta: "<consulta>"
      Then Validar o retorno <retorno>

    Examples: Dividas
        | consulta                |retorno            |
        | Brasil                  |Brasil             |
        | EUA                     |Estados Unidos     |