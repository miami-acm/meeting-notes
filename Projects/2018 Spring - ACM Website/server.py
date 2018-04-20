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

    app.config['SQLALCHEMY_DATABASE_URI'] = \
        'postgresql://%(user)s:\%(pw)s@%(host)s:%(port)s/%(db)s' % POSTGRES

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
        template_files = (file.rsplit('.', maxsplit=1)
                          for file in os.listdir('templates'))
        non_base_template_filenames = (filename
                                       for (filename, _) in template_files
                                       if not filename.endswith('template')
                                       and filename.startswith('about_')
                                       and filename != 'about_us')
        member_names = map(
            lambda filename: filename.replace('about_', '', 1).title(),
            non_base_template_filenames)
        return render_template('about_us.html', members=member_names)

    return render_template("about_{0}.html".format(name), user=name)


@app.route('/contact')
def contact():
    return render_template("contact.html")


@app.route('/dbtest')
def dbtest():
    print(Question.query.all())
    return repr(Question.query.all())


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
