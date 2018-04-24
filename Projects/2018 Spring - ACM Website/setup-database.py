#!/usr/bin/env python3

import collections

JeopardyQuestionId = collections.namedtuple('JeopardyQuestionId',
                                            'category, price')
JeopardyQuestion = collections.namedtuple('JeopardyQuestion',
                                          'question, answer')

jeopardy_categories = {
    'syntax': (
        JeopardyQuestion("""
This is the name of the following program:
print('Hello world!')
""", 'What is Hello World!'),

        JeopardyQuestion("""
for x in range(11, 21):
    print(x)
""", 'What is printing the integers from 11 to 21?'),

        JeopardyQuestion("""
import statistics

quiz_grades = {
    'Joe': 0.90,
    'Steve': 0.82,
    'Alli': 0.91,
    'Bob': 0.71
}

minimum_grade = min(quiz_grades.values())
average_grade = statistics.mean(quiz_grades.values())

print(f'Quiz 1, Minimum: {minimum_grade * 100}% Maximum: {average_grade * 100}%')
""", 'What is calculating grade statistics?'),

        JeopardyQuestion("""
def f(x: int):
    return (x ** 2) - (2 * x) + 1

print('X \t Y')
for x in range(-10, 10):
    print(f'{x} \t {f(x)}')
""", 'What is making a table?'),

        JeopardyQuestion("""
for receipt_number in range(10):
        with open(f'receipt {receipt_number}.txt', 'a') as file:
            file.write('Thank you for your purchase')
""", 'What is appending text to text files?'),

    ),
    'modules': (

        JeopardyQuestion("""
This module is good for working with CSV spreadsheets.
""", 'What is ``csv``?'),

        JeopardyQuestion("""
Module that is good for flying.
(Spacemen may or may not use this module)
""", 'What is ``antigravity``?'),

        JeopardyQuestion("""
This module is useful for making sure your code works like it should.
""", 'What is ``unittest``?'),

        JeopardyQuestion("""
This module allows you to communicate with the OS (e.g Windows or macOS).
""", 'What is ``os``?'),

        JeopardyQuestion("""
This "is the only Non-GMO HTTP library for Python, safe for human consumption."

This "allows you to send organic, grass-fed HTTP/1.1 requests,
without the need for manual labor."
""", 'What is Requests?'),

    ),
    'data_types': (

        JeopardyQuestion("""
my_room = 174
""", 'What is ``int``?'),

        JeopardyQuestion("""
name = 'John Doe'
""", 'What is ``str``?'),

        JeopardyQuestion("""
hours_of_sleep = (
    7,
    8,
    6,
    9,
    4
)
""", 'What is ``tuple``?'),

        JeopardyQuestion("""
friends = {
    'Jane',
    'John',
    'Bill'
}
""", 'What is ``set``?'),

        JeopardyQuestion("""
music_artists_to_genre = {
    'Ed Sheeran': 'acoustic pop',
    'Howard Shore': 'film scores',
    'Peter Hollens': 'a capella'
}
""", 'What is ``dict``?'),

    ),
    'python_history': (

        JeopardyQuestion("""
The file extension for Python code files.
""", 'What is ``.py``?'),

        JeopardyQuestion("""
The year Python first appeared.
""", 'What is 1991?'),

        JeopardyQuestion("""
The document where it famously states: "Beautiful is better than ugly..."
""", 'What is The Zen of Python?'),

        JeopardyQuestion("""
This change in 2008 causes many people to update their old code.
""", 'What is the upgrade from Python 2 to Python 3?'),

        JeopardyQuestion("""
The designer of Python.
""", 'What is Guido van Rossum?'),

    ),
    'internal_workings': (

        JeopardyQuestion("""
Means that the same Python code works on any device.
""", 'What is cross platform?'),

        JeopardyQuestion("""
Means Python code is never translated into machine-language.
""", 'What is an interpreted language?'),

        JeopardyQuestion("""
The language the official Python interpreter is written in.
""", 'What is C?'),

        JeopardyQuestion("""
A special Python interpreter that is written in Python.
""", 'What is PyPy?'),

        JeopardyQuestion("""
Means variables can store any type of data.

Example::

    x = 5
    x = 'foo'
""", 'What is dynamic typing?'),

    ),
}

jeopardy_questions = {
    JeopardyQuestionId(category, f'${100 * (question_number + 1)}'): question
    for category, questions in jeopardy_categories.items()
    for question_number, question in enumerate(questions)}

if __name__ == '__main__':
    # TODO: Send to stdout commands for the PostreSQL server
    print('Use the commands:\npg_ctl start\ncreate database postgres\npsql postgres')
