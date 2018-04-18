#!/usr/bin/env python3

import webbrowser
from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
db = SQLAlchemy()

POSTGRES = {
    'user': 'jarvisna',
    'pw':   '',
    'db':   'jarvisna',
    'host': 'localhost',
    'port': '5432',
}

app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://%(user)s:\%(pw)s@%(host)s:%(port)s/%(db)s' % POSTGRES

db.init_app(app)

class Question(db.Model):
    __tablename__ = "questions"
    id = db.Column(db.Integer, primary_key=True)
    question = db.Column(db.String(100), primary_key=True)
    answer = db.Column(db.String(100), primary_key=True)

    def __init__(self, question, answer):
        self.question = question
        self.answer = answer

    def __repr__(self):
        return "{}? {}".format(self.question, self.answer)

@app.route('/')
def hello_world():
    return render_template("home.html")

@app.route('/about/<name>')
@app.route('/about')
def about(name=None):
    if name is None:
        return render_template("about_me_template.html")

    return render_template("about_{0}.html".format(name), user=name)

@app.route('/dbtest')
def dbtest():
    print(Question.query.all())
    return repr(Question.query.all())

if __name__ == '__main__':
    webbrowser.open('http://localhost:5000/')
    app.config['TEMPLATES_AUTO_RELOAD'] = True
    app.run(host='0.0.0.0', port=5000)
