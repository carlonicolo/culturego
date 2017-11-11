from flask import render_template
from app import app
from flask import g
import sqlite3
from flask import Flask, request, render_template

#DATABASE = '/app/db.db'

@app.before_request
def before_request():
    g.db = sqlite3.connect("app/db.db")

@app.teardown_request
def teardown_request(exception):
    if hasattr(g, 'db'):
        g.db.close()


@app.route('/list')
def emails():
    open_data = g.db.execute("SELECT * FROM Data").fetchall()
    return render_template('list.html',open_data=open_data)

def insert_data():
    open_data = g.db.execute()

#conn = sqlite3.connect('app/db.db')
#c = conn.cursor()
#print("Connection status ", c)
#print (c.execute("SELECT * FROM Data"))

@app.route('/')
def index():
    return render_template("index.html")

@app.route('/game')
def game():
    open_data = g.db.execute("SELECT * FROM Data").fetchall()
    return render_template("map1.html",open_data=open_data)


''' @app.route('/show')
def show_entries():
    db = get_db()
    cur = db.execute('select title, text from entries order by id desc')
    entries = cur.fetchall()
    return render_template('show_entries.html', entries=entries) '''


''' @app.route('/show')
def list():
   con = sql.connect("db.db")
   con.row_factory = sql.Row
   
   cur = con.cursor()
   cur.execute("SELECT * FROM Data")
   
   rows = cur.fetchall(); 
   return render_templates("list.html",rows = rows) '''