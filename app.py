from flask import Flask, render_template, request, url_for, redirect
from flaskext.mysql import MySQL

app = Flask(__name__)

#configuring/ connecting my database
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'techvillage'

mysql = MySQL()
mysql.init_app(app)

@app.route('/')
def index():
    cur = mysql.get_db().cursor()
    cur.execute("SELECT * FROM todo WHERE Complete=0")
    incomplete = cur.fetchall()

    cur2 = mysql.get_db().cursor()
    cur2.execute("SELECT * FROM todo WHERE Complete=1")
    complete = cur2.fetchall()

    cur.close()
    cur2.close()

    return render_template('index.html', incomplete=incomplete, complete=complete)

@app.route('/add', methods=['POST'])
def add():
    task_text = request.form['to_do_item']

    cur = mysql.get_db().cursor()
    cur.execute("INSERT INTO todo(Text) VALUES (%s)", (task_text))
    mysql.get_db().commit()
    return redirect(url_for('index'))

@app.route("/update", methods=["POST"])
def update():
    my_check_box = request.form["my_check_box"]
    cur = mysql.get_db().cursor()
    cur.execute("UPDATE todo SET Complete=1 WHERE ID=%s", (my_check_box))
    return redirect(url_for("index"))

@app.route("/clear_all", methods=["POST"])
def clear_all():
    cur = mysql.get_db().cursor()
    cur.execute("DELETE FROM todo WHERE Complete=1")
    return redirect(url_for("index"))

if __name__ == '__main__':
    app.run(debug=True)