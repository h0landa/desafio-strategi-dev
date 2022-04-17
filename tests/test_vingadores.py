from splinter import Browser
from time import sleep
import unittest

espere = 2

class TestListaVingadores(unittest.TestCase):
    url = 'http://localhost:5000/candidatos/vingadores'
    def setUp(self):
        self.browser = Browser()

    def test_lista_vingadores(self):
        browser = Browser()
        browser.visit("http://localhost:5000/candidatos/vingadores")

        sleep(espere)

        expected = {
            "url":"http://localhost:5000/candidatos/vingadores",
            "title":"Vingadores",
            "message":"Heróis dos Vingadores"
        }
        self.assertEqual(expected["url"], browser.url,
                        msg="URL diferente da esperada.")
        self.assertEqual(expected["title"], browser.title,
                        msg="Titulo diferente do esperado")
        self.assertTrue(browser.is_text_present(expected["message"]),
                        msg="Mensagem ausente ou diferente da esperada.")

    def tearDown(self):
        self.browser.quit()

if __name__ == "__main__":
    unittest.main()