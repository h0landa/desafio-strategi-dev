from app import app
from app.models.tables import Candidatos, Herois, Vingadores, Equipe
from flask import render_template, request
from app import mysql, db
import MySQLdb.cursors


@app.route("/", methods=['GET', 'POST'])
@app.route("/index/", methods=['GET', 'POST'])
def index():
    msg = ''
    if request.method == 'POST':
        lista_herois = request.form.getlist('mycheckbox')
        for candidatos in lista_herois:
            presente = Candidatos.query.filter_by(nome=candidatos).first()
            if presente:
                msg = 'Esse herói já foi cadastrado'
            else:
                me = Candidatos(candidatos)
                db.session.add(me)
                db.session.commit()
                msg = 'Sucesso'
    result = Herois.query.all()
    return render_template("index.html", res=result, mensagem=msg)


@app.route("/candidatos", methods=['GET', 'POST'])
def candidatos():
    msg = ''
    if request.method == 'POST':
        lista_herois = request.form.getlist('mycheckbox')
        escolha = request.form.get('check')
        for escolha in lista_herois:
            if escolha == 'vingadores':
                me = Vingadores(escolha)
                db.session.add(me)
                db.session.commit()
                msg = 'Heróis enviados para os Vingadores'
            elif escolha == 'equipe':
                me = Equipe(escolha)
                db.session.add(me)
                db.session.commit()
                msg = 'Heróis enviados para a Equipe'
    result = Candidatos.query.all()
    return render_template("candidatos.html", res=result, mensagem=msg)


@app.route("/candidatos/vingadores")
def vingadores():
    result = Vingadores.query.all()
    return render_template("vingadores.html", res=result)


@app.route("/candidatos/equipe")
def equipe():
    result = Equipe.query.all()
    return render_template("equipe.html", res=result)
