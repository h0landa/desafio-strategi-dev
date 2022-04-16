from app import app
from app.models.tables import Candidatos, Herois
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
