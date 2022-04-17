from splinter import Browser
from time import sleep
import unittest

espere = 2

class TestListaEquipe(unittest.TestCase):
    url = 'http://localhost:5000/candidatos/equipe'
    def setUp(self):
        self.browser = Browser()

    def test_lista_equipe(self):
        browser = Browser()
        browser.visit("http://localhost:5000/candidatos/equipe")

        sleep(espere)

        expected = {
            "url":"http://localhost:5000/candidatos/equipe",
            "title":"Equipe",
            "message":"Heróis da Equipe"
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