.. _Hovercraft: https://github.com/regebro/hovercraft
.. Suggested template: https://github.com/sixfeetup/sixfeetup_hovercraft

  :title: ACM 3rd Meeting
  :data-transition-duration: 1000

This file is meant to be viewed using Hovercraft_.
To view, execute::

    pipenv run hovercraft -t path/to/sixfeetup_hovercraft/template.cfg presentation.rst

----

Hey there!
==========

----

Obligatory joke
===============

.. image:: https://imgs.xkcd.com/comics/sandwich.png

(https://xkcd.com/149/)

----

Today, we're going to make our own calculator
=============================================

.. Before we start, let's divide into pairs

----

In Python, math is really easy
==============================

.. code-block:: python

    >>> 5 + 2
    7
    >>> 7 * 8
    56
    >>> 3 / 2
    1.5
    >>> 4 - 5
    -1

----

It's even more powerful when we introduce variables
===================================================

.. code-block:: python

    >>> operand_1 = 3
    >>> operand_2 = 5

    >>> operand_1 + operand_2
    8
    >>> operand_1 * operand_2
    15
    >>> operand_1 / operand_2
    0.6
    >>> operand_1 - operand_2
    -2

----

Variables can be specified by the user
======================================

.. code-block:: python

    >>> input('What is first number? ')
    >>> input('What is the second number? ')

----

So here's the plan
==================

* Simple program

    * Asks the user for two numbers, adds them together, and prints the result

* Basic program

    * In addition to the above,
      the user can specify use the basic four math functions
    
        * add
        * subtract
        * multiply
        * divide

* Looping program

    * Repeats the above until the user enters ``q``

----

So here's the plan (cont'd)
===========================


* Better program

    * Use the result of the previous operation as the first number
    * Ask the user only for one number

* Final program

    * Enable the user to reset the previous result to zero by pressing ``c``
