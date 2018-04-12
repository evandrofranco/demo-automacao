from selenium.webdriver.common.keys import Keys
import time


@given(u'Acesso o google.com')
def step_impl(context):
    # acessa o site principal
    context.browser.visit('/')


@when(u'Executo uma consulta: "{consulta}"')
def step_impl(context, consulta):
    # busca o campo TXT do google e digita o valor do BDD
    busca = context.browser.find_by_id('lst-ib')
    busca.send_keys(consulta)
    # envia o enter (submit)
    busca.send_keys(Keys.RETURN)
    # procura o primeiro link, wikipedia e clica nele
    wiki = context.browser.find_by_css('#rso > div:nth-child(2) > div >\
                                    div:nth-child(1) > div > div > h3 > a')
    wiki.click()
    # sleep apenas para visualizar a pagina
    time.sleep(2)


@then(u'Validar o retorno {retorno}')
def step_impl(context, retorno):
    # pega o valor no topo da wikipedia
    titulo = context.browser.find_by_id('firstHeading')
    print(titulo.text)
    # passa o teste se o valor for conforme esperado
    assert True if titulo.text == retorno else False
    # sleep apenas para visualizar a pagina
    time.sleep(2)
    
