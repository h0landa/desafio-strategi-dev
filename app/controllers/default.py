import json
from app import app
from app.models.tables import Candidatos, Herois, Vingadores, Equipe
from flask import render_template, request
from app import db
from app.models.herois import MyForm
import requests
from config import apikey, hash, ts
from requests import exceptions



def atualiza_banco():
    URL = f"https://gateway.marvel.com/v1/public/characters?ts={ts}&apikey={apikey}&hash={hash}&limit=100"
    request_x = requests.get(f"{URL}")
    todos = json.loads(request_x.content)
    all_results = todos['data']['results']
    for results in all_results:
        card = Herois(results['name'],results['description'],
        f"{results['thumbnail']['path']}.{results['thumbnail']['extension']}")
        existe = Herois.query.filter_by(nome=results['name']).first()
        if not existe:
            db.session.add(card)
            db.session.commit()


def check_internet():
    #checar conexão de internet
    url = 'https://developer.marvel.com/'
    timeout = 5
    try:
        requests.get(url, timeout=timeout)
        return True
    except exceptions.ConnectionError:
        return False


@app.route("/", methods=['GET', 'POST'])
@app.route("/index/", methods=['GET', 'POST'])
def index():
    if check_internet():
        atualiza_banco()


    msg = ''
    if request.method == 'POST':
        all_herois = request.form.getlist('mycheckbox')
        for candidatos in all_herois:
            splited = candidatos.split('~')
            nome_heroi = splited[0]
            imagem_heroi = splited[1]
            presente = Candidatos.query.filter_by(nome=nome_heroi).first()
            if presente:
                msg = 'Esse herói já foi cadastrado'
            else:
                me = Candidatos(nome_heroi, imagem_heroi)
                db.session.add(me)
                db.session.commit()
                msg = 'Sucesso'

    page = request.args.get('page', 1, type=int)
    todos_resultados = Herois.query.paginate(page=page, per_page=20)
    return render_template("index.html", mensagem=msg, todos_resultados=todos_resultados)


@app.route("/candidatos/", methods=['GET', 'POST'])
def candidatos():
    msg = ''
    if request.method == 'POST':
        all_herois = request.form.getlist('mycheckbox')
        escolha = request.form.get('check')
        for herois in all_herois:
            splited = herois.split('~')
            nome_heroi = splited[0]
            imagem_heroi = splited[1]
            if escolha == 'vingadores':
                heroi = Vingadores(nome_heroi,imagem_heroi)
                db.session.add(heroi)
                db.session.commit()
                msg = 'Heróis enviados para os Vingadores'
                candidato = Candidatos.query.filter_by(nome=nome_heroi).first()
                if candidato:
                    db.session.delete(candidato)
                    db.session.commit()
            if escolha == 'equipe':
                heroi = Equipe(nome_heroi, imagem_heroi)
                db.session.add(heroi)
                msg = 'Heróis enviados para a Equipe'
                candidato = Candidatos.query.filter_by(nome=nome_heroi).first()
                if candidato:
                    db.session.delete(candidato)
                    db.session.commit()
    todos_resultados = Candidatos.query.all()
    return render_template("candidatos.html", todos_resultados=todos_resultados, mensagem=msg)


@app.route("/candidatos/vingadores", methods=['GET', 'POST'])
def vingadores():
    msg = ''
    lista_herois = request.form.getlist('mycheckbox')
    if request.method == 'POST':
        for herois in lista_herois:
            vingador = Vingadores.query.filter_by(nome=herois).first()
            db.session.delete(vingador)
            db.session.commit()
            msg = 'Sucesso'
    todos_resultados = Vingadores.query.all()
    return render_template("vingadores.html", todos_resultados=todos_resultados, mensagem=msg)


@app.route("/candidatos/equipe", methods=['GET', 'POST'])
def equipe():
    msg = ''
    lista_herois = request.form.getlist('mycheckbox')
    if request.method == 'POST':
        for herois in lista_herois:
            heroi = Equipe.query.filter_by(nome=herois).first()
            db.session.delete(heroi)
            db.session.commit()
            msg = 'Sucesso'
    todos_resultados = Equipe.query.all()
    return render_template("equipe.html", todos_resultados=todos_resultados, mensagem=msg)

#Função para se caso a API da marvel não estiver no ar
@app.route("/cadastro", methods=['GET', 'POST'])
def cadastro():
    msg = ''
    form = MyForm()
    poderes = form.poderes.data
    nome = form.nome.data
    caracteristicas = form.caracteristicas.data
    habilidades = form.habilidades.data
    if request.method == 'POST':
        me = Herois(nome, caracteristicas, habilidades, poderes)
        lista_herois = Herois.query.filter_by(nome=nome).first()
        if lista_herois:
            msg = 'Esse Herói já está cadastrado.'
        else:
            db.session.add(me)
            db.session.commit()
            msg = 'Herói Cadastrado com Sucesso'
    return render_template("cadastro.html", form=form, mensagem=msg)
