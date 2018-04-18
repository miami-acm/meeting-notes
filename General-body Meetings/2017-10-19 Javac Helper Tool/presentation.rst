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

.. figure:: https://imgs.xkcd.com/comics/heartbleed_explanation_2x.png
   :height: 600px

:title: Are you still there, server? It's me, Margaret.

(https://xkcd.com/1354/)

----

Today, we're going to continue our project from last time
=========================================================

* What it is:

  * A Javac helper tool that ensures that Java code in your homework compiles

* Why we're doing it:

  * Some freshmen have trouble writing compilable Java code
  * This tool can help them know whether it compiles or not

----

Review: How ``javac`` works
===========================

::

    mkdir 'CSE Java Homework'  # Student creates new folder
    cd 'CSE Java Homework'  # Student writes Java code...
    javac ./File1.java ./File2.java  # Compiles ``.java`` files to ``.class`` files
    # Student runs ``.class`` files

----

We can launch ``javac`` from Python
===================================

.. code-block:: python

    >>> import subprocess
    >>> process = subprocess.run(('javac', 'File1.java', 'File2.java'))

----

However, we need to know the names of the files before launching ``javac``
==========================================================================

For that, we'll use a third-party package called PyFilesystem.

----

``PyFilesystem``
================

.. code-block:: python

    >>> from fs import open_fs
    # Create open the top-most folder
    >>> downloads_folder = open_fs('~/Downloads/')
    >>> with downloads_folder:
    ...    # Do stuff...

----

``PyFilesystem`` basic methods
==============================

.. code-block:: python

    >>> from fs import open_fs
    >>> folder = open_fs(args.dir)
    >>> with folder:
    ...     # List file in a (relative) directory
    ...     for filename in folder.listdir('/'):  # type: str
    ...         print(filename)
    ...
    ...     # Recursively list the files in a directory (and subdirectories)
    ...     for filename in folder.walk.files():
    ...         print(filename)
    ...
    ...     # Fillter with list of strings
    ...     for filename in folder.walk.files(filter=filter_list):
    ...         print(filename)

----

Here's the plan (same as last time)
===================================

#. Print the filenames of the files in the working directory
#. Print the filenames of the files in some directory passed by a parameter
#. Recursively, print the filenames of files for directory parameter
#. Manually, compile sample Java code with ``javac``
#. Call ``javac`` with ``subprocess`` module
#. Analyze return value and tell the user whether the compilation is successful

----

Let's get to it!
================

----

Conclusion
==========

We made a useful program!

----

Up next week
============

A Python program that interacts with Canvas and downloads files, grades, etc.
