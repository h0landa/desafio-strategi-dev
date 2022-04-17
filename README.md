# desafio-strategi-dev
# Preparando o Ambiente

Para executar o desafio na sua máquina são necessarios as seguintes tecnologias
* MySQL
* phpmyadmin(opcional)
* Python3
* GitHubDesktop

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
as credenciais: username: root. password: (deixe em branco). Clique em novo e
selecione a opção "importar". Agora, clique em "escolher arquivo", selecione o
storage.sql que veio na pasta do repositório e execute a instrução.

4.Para instalar todos os pacotes necessarios para rodar o desafio, na pasta do arquivo digite:
```pip install -r requirements.py```

4.Agora, na pasta que você baixou os arquivos do repositório, crie um arquivo
chamado .env, copie os dados que tem no arquivo .env-example e cole nele.

5.Para criar sua pasta Migrations.Na pasta que você clonou o repositório, digite os seguintes comandos respectivamente: 
* `python run.py db init`
* `python run.py db migrate`
* `python run.py db upgrade`
6.Agora que você já tem a pasta Migrations e já instalou todas as dependencias, agora é só entrar na pasta onde você clonou o repositório e digitar o comando:
```python run.py runserver```
7. Por fim, você pode acessar o endereço `localhost:5000` no seu navegador:




