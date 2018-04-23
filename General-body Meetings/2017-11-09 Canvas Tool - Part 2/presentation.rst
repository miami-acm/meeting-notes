.. _Hovercraft: https://github.com/regebro/hovercraft
.. Suggested template: https://github.com/sixfeetup/sixfeetup_hovercraft

  :title: ACM Meeting Slides
  :data-transition-duration: 1000

This file is meant to be viewed using Hovercraft_.
To view, execute::

  pipenv run hovercraft -t path/to/sixfeetup_hovercraft/template.cfg presentation.rst

----

Hello again!
============

----

.. image:: https://xkcd.com/1168/
   :height: 600px

:title: I don't know what's worse--the fact that after 15 years of using tar I still can't keep the flags straight, or that after 15 years of technological advancement I'm still mucking with tar flags that were 15 years old when I started.

(https://xkcd.com/1168/)

----

The topic for today
===================

Using the ``canvasapi`` module to download course files automatically

----

Some background: Classes and Objects
====================================

You probably noticed that Python has a lot of types,
such as ``int``, ``str``, or even ``float``.

These types are builtin and come with Python.

.. code-block:: python

    >>> a = 1
    >>> b = 2
    >>> c = '3'
    >>> a + b
    3
    >>> b + c
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    TypeError: unsupported operand type(s) for +: 'int' and 'str'

----

But wait, there's more
======================

We can define our own types.

For example:

* Pyfilesystem defines an ``OSFS`` type
* canvasapi defines a ``Course`` type for each course

----

Defining types: Classes
=======================

.. code-block:: python

    class CustomType:
        def __init__(self, foo):
            # ...

        # ...
Then, to create a ``CustomType``, we would write:

.. code-block:: python

    >>> some_variable_name = CustomType('{some argument}')
    >>> some_variable_name
    <__main__.CustomType object at 0x00000189356D1F60>

----

Instance variables
==================

.. code-block:: python

    # ...

    def __init__(self, foo):
        self.foo = foo

    def some_other_method(self):
        # Can use foo since stored in self.foo
        print(self.foo)

    # ...

----

Advanced classes
================

.. code-block:: python

    class CustomInt(int):
        def __init__(self, foo):
            super().__init__(foo)  # Call to super constructor - Required
            # Add/modify instance variables

        # Add, override, or extend methods here

----

Quick note: Python type annotations
===================================

Since the type of a given variable can change over time,
it sometimes becomes hard to remember the type the variable holds and when it holds it.

To help with this, Python 3.6 has introduced type annotations.

They are notes in the source code that remind the programmer what type the variable should be holding.

----

Canvas API: Fetching files
==========================

Assuming we have a ``Canvas`` object, we first need to choose a ``Course``:

.. code-block:: python

    course = canvas.get_courses()[0]
    for folder in course.list_folders():
        for file in folder.list_files():
            print('Filename {filename}'.format(filename=file))
            print('Download URL: {url}'.format(url=file.url))
            # File to be downloaded at URL via HTTP

----

Requests: HTTP for Humans
=========================

Third-party HTTP library for Python.

.. code-block:: python

    r = requests.get('https://example.com/')
    r.status_code
    r.text  # Use for text files
    r.json()  # Use for JSON files
    r.content # Use for binary files

----

Let's get to it!
================

.. _file_fetcher.py: https://github.com/miami-acm/public-materials/blob/master/Presentation%20Materials/2017-11-09%20Canvas%20Tool%20-%20Part%202/file_fetcher.py

See the `file_fetcher.py`_ in ``miami-acm/public-materials`` on GitHub to get started.

The ``canvasapi`` documentation is now located under ``Resources/``.

----

Conclusion
==========

We made a program that automatically downloads files from Canvas!

----

See you next time!
==================
