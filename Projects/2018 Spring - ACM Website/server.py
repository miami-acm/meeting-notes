#!/usr/bin/env python3

import webbrowser
import os
from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
db = SQLAlchemy()

app.config['DEBUG'] = True

USE_DB = False

if USE_DB:
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
        members = [mem.split('about_')[1][:-5].title() for mem in os.listdir('templates') if len(mem.split('about_')) > 1]
        members.remove('Us')
        members.remove('Me_Template')
        return render_template("about_us.html", members=members)

    return render_template("about_{0}.html".format(name), user=name)

@app.route('/dbtest')
def dbtest():
    print(Question.query.all())
    return repr(Question.query.all())

if __name__ == '__main__':
    webbrowser.open('http://localhost:5000/about')
    app.run(host='0.0.0.0', port=5000)
