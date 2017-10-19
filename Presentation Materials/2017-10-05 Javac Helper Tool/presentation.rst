.. _Hovercraft: https://github.com/regebro/hovercraft
.. Suggested template: https://github.com/sixfeetup/sixfeetup_hovercraft

  :title: Welcome!
  :data-transition-duration: 1000

This file is meant to be viewed using Hovercraft_.
To view, execute::

  pipenv run hovercraft -t path/to/sixfeetup_hovercraft/template.cfg presentation.rst

----

Hello again!
============

----

.. image:: https://imgs.xkcd.com/comics/second_2x.png
   :height: 600px

(https://xkcd.com/1334/)

----

Today, we're going to make a tool for your academic homework
============================================================

* What it is:

  * A Javac helper tool that ensures that Java code in your homework compiles

* Why we're doing it:

  * We've heard lots of freshmen have trouble writing compilable Java code
  * So, we are going to make a tool to help them know whether it does

----

Here's the plan
===============

#. Print the filenames of the files in the working directory
#. Print the filenames of the files in some directory passed by a parameter
#. Recursively, print the filenames of files for directory parameter
#. Manually, compile sample Java code with ``javac``
#. Call ``javac`` with ``subprocess`` module
#. Analyze return value and tell the user whether the compilation is successful

----

Filesystem Navigation
=====================

PyFilesystem (``fs``)

Example:

.. code-block:: python

    from fs.osfs import OSFS
    home_directory = OSFS('~/')
    home_directory.listdir()

For more info, see https://pyfilesystem.readthedocs.io/en/latest/

----

Javac
=====

It's the program the compiles Java code!

Example:

.. code-block:: shell

    javac SomeClass.java

----

``subprocess`` module
=====================

Run other programs from Python

.. code-block:: python

    process = subprocess.run(('ping', 'miamioh.edu'))

----

Let's get to it!
================

----

Conclusion
==========

We made a useful program!

----

See you next time
=================
