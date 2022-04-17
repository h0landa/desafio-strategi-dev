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
        x = request.form.getlist('mycheckbox')
        for c in x:
            presente = Candidatos.query.filter_by(nome=c).first()
            if presente:
                msg = 'Esse herói já foi cadastrado'
            else:
                me = Candidatos(c)
                db.session.add(me)
                db.session.commit()
                msg = 'Sucesso'
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute('SELECT * FROM herois;')
    result = cur.fetchall()
    return render_template("index.html", res=result, mensagem=msg)


@app.route("/candidatos", methods=['GET', 'POST'])
def candidatos():
    msg = ''
    if request.method == 'POST':
        x = request.form.getlist('mycheckbox')
        y = request.form.get('check')
        for c in x:
            if y == 'vingadores':
                me = Vingadores(c)
                db.session.add(me)
                db.session.commit()
                msg = 'Heróis enviados para os Vingadores'
            elif y == 'equipe':
                me = Equipe(c)
                db.session.add(me)
                db.session.commit()
                msg = 'Heróis enviados para a Equipe'
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute('SELECT * FROM candidatos;')
    result = cur.fetchall()
    return render_template("candidatos.html", res=result, mensagem=msg)


@app.route("/candidatos/vingadores")
def vingadores():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute('SELECT * FROM vingadores;')
    result = cur.fetchall()
    return render_template("vingadores.html", res=result)


@app.route("/candidatos/equipe")
def equipe():
    return 'Página da equipe'
