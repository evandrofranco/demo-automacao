from selenium import webdriver
from selenium.webdriver.chrome.options import Options


class Browser(object):

    base_url = 'https://www.google.com.br'
    driver = webdriver.Chrome()
    driver.implicitly_wait(5)

    def close(self):
        """
        encerra a instancia do webdriver
        """
        self.driver.quit()

    def visit(self, location=''):
        """
        navega pelo webdriver em diferentes paginas
        """
        url = self.base_url + location
        self.driver.get(url)

    def find_by_id(self, selector):
        """
        procura um elemento na pagina usando o ID
        """
        return self.driver.find_element_by_id(selector)

    def find_by_name(self, selector):
        """
        procura um elemento na pagina usando o Name
        """
        return self.driver.find_element_by_name(selector)

    def find_by_xpath(self, selector):
        """
        procura um elemento na pagina usando o XPath
        """
        return self.driver.find_element_by_xpath(selector)

    def find_by_css(self, selector):
        """
        procura um elemento na pagina usando o XPath
        """
        return self.driver.find_element_by_css_selector(selector)
