from app import app
import sqlite3

conn = sqlite3.connect('db.db')
c = conn.cursor()


@app.route('/')
def index():
    return 'Hello ! How are you Andrea ?'


''' @app.route('/show')
def show_entries():
    db = get_db()
    cur = db.execute('select title, text from entries order by id desc')
    entries = cur.fetchall()
    return render_template('show_entries.html', entries=entries) '''


''' @app.route('/show')
def list():
   con = sqlite3.connect("db.db")
   con.row_factory = sql.Row
   
   cur = con.cursor()
   cur.execute("SELECT * FROM Data")
   
   rows = cur.fetchall(); 
   return render_templates("list.html",rows = rows) '''

@app.route('/show')
def read_from_db():
    c.execute('SELECT * FROM Data')
    data = c.fetchall()
    print(data)
    for row in data:
        print(row)