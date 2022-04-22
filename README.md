# desafio-strategi-dev
# Preparando o Ambiente

Para executar o desafio na sua máquina são necessarios as seguintes tecnologias
* MySQL
* phpmyadmin(opcional)
* Python3
* GitHubDesktop
* Flask e como ORM o SQLALchemy

# Windows

## Tecnologias necessárias

1. Baixe e instale o WAMP(para ter acesso ao phpmyadmin) em: https://www.wampserver.com/en/.
2. Baixe o instale o GIT (Caso não tenha): https://git-scm.com/downloads.
3. Baixe o GitHub Desktop(facilitador): https://desktop.github.com/
4. Baixe o Python3: https://www.python.org/downloads/

## Configurações

1.No GitHubDesktop, clone o repositório do desafio.
```
https://github.com/h0landa/desafio-strategi-dev
```
2.Inicie o WAMP server, abra seu navegador e acesse `localhost` na barra de
pesquisa. Isso deve abrir a homepage do wamp. Caso não, certifique-se que o
servidor está rodando e tente novamente.

3.Na homepage do wamp, acesse a ferramenta phpmyadmin. Faça o login nela usando
as credenciais: username: root. password: (deixe em branco).

4.Na página do phpmyadmin, crie seu banco de dados e de o nome de storage

5.Dentro do seu banco criado, clique em novo e selecione a opção "importar". Agora, clique em "escolher arquivo", selecione o
storage.sql que veio na pasta do repositório e execute a instrução.

6.Para instalar todos os pacotes necessarios para rodar o desafio, na pasta do arquivo digite:
```pip install -r requirements.py```

7.Agora, na pasta que você baixou os arquivos do repositório, crie um arquivo
chamado config.py, copie os dados que tem no arquivo config-example.py e cole nele.

8.Agora que criou o arquivo config.py, preencha as informações de acordo com os dados do seu DB(Banco de Dados) e preencha os campos ts, apykey e hash, de acordo com suas chaves da API da Marvel.

9.Para atualizar os dados da sua pasta Migrations com seu banco de dados, na pasta que você clonou o repositório, digite os seguintes comandos respectivamente: 
* `python run.py db migrate`
* `python run.py db upgrade`

10.Agora que você já tem a pasta Migrations e já instalou todas as dependencias, agora é só entrar na pasta onde você clonou o repositório e digitar o comando:`python run.py runserver`

11.Por fim, você pode acessar o endereço `localhost:5000` no seu navegador.

# Testes(Os testes ainda estão em fase de teste...)
Os testes do desafio são desenvolvido com Splinter, uma ferramenta para testes de aplicações web com Python, e com a biblioteca embutida unittest. Estão localizados no diretório tests.

Para executar todos os testes use o comando: `python -m unittest`

O resultado desse comando, e se todos os testes estiverem passando, deverá
ser algo como:
```
....
----------------------------------------------------------------------
Ran 4 tests in 300.129s

OK
```
