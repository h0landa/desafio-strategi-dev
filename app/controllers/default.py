import json
from app import app
from app.models.tables import Candidatos, Herois, Vingadores, Equipe
from flask import render_template, request
from app import db
from app.models.herois import MyForm
import requests


@app.route("/", methods=['GET', 'POST'])
@app.route("/index/", methods=['GET', 'POST'])
def index():
    msg = ''
    request_x = requests.get(
        "https://gateway.marvel.com/v1/public/characters?ts=1650306744&apikey=c76c2359c012efb90d17c77453f13267&hash=d155d3b7162d0ff5b0acb0c2e7471450&limit=100")
    todos = json.loads(request_x.content)
    all_results = todos['data']['results']
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
    return render_template("index.html", mensagem=msg, all_results=all_results)


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
    all_results = Candidatos.query.all()
    return render_template("candidatos.html", all_results=all_results, mensagem=msg)


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
    result = Vingadores.query.all()
    return render_template("vingadores.html", res=result, mensagem=msg)


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
    result = Equipe.query.all()
    return render_template("equipe.html", res=result, mensagem=msg)

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
