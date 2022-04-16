from app import app
from app.models.tables import Herois
from flask import render_template, request
from app import mysql
import MySQLdb.cursors 


@app.route("/")
@app.route("/index", methods=['GET', 'POST'])
def index():
    cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cur.execute('SELECT * FROM herois;')
    result = cur.fetchall()
    return render_template("index.html", res=result)
