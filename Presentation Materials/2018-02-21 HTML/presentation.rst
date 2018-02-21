.. _Hovercraft: https://github.com/regebro/hovercraft
.. Suggested template: https://github.com/sixfeetup/sixfeetup_hovercraft

  :title: ACM Meeting Slides
  :data-transition-duration: 1000

This file is meant to be viewed using Hovercraft_.
To view, execute::

  pipenv run hovercraft -t path/to/sixfeetup_hovercraft/template.cfg presentation.rst

----

Welcome to ACM
==============

----

Today we're learning HTML
=========================

* HTML stands for "Hypertext Markup Language"
* Basis for web sites/apps
* Strictly describes content of the web page

----

Hello World
===========

.. code:: html

  <!doctype html>
  <html>
    <head></head>
    <body>
        Hello World!
    </body>
  </html>

----

HTML Elements
==============

Content surrounded by tags ``<tagname>``

* Paragraphs: ``<p>``
* Headings: ``<h1>``, ``<h2>``, ... ``<h6>``
* Bold, italic text: ``<b>``, ``<i>``
* Links: ``<a>``
* Image: ``<img>``
* Lists: ``<ol>``, ``<ul>`` (contains ``<li>``)
* Checkbox: ``<checkbox>``

Should be followed by a closing tag (``</tagname>``)
or be self-closing (``<tagname />``).

----

HTML Element Atributes
======================

``<tagname attribute1="value">``

* Ex: ``<img src="url/to/image.svg">``
* Ex: ``<a href="https://example.com/" >Link text</a>``

----

CSS
===

* Descibes the look of the web page
* Irrespective of content

.. code:: CSS

  selector {
    property: value; /* Each "property: value" pair is a declaration */
  }

----

Common CSS Properties
=====================

* ``font-family``
* ``font-size``
* ``background-color``

----

Tips
====

.. _MDN: https://developer.mozilla.org/en-US/
.. _w3schools.com: https://www.w3schools.com/

* Learn HTML tags and CSS properties as you go
* MDN_ and w3schools.com_ are great resources

----

Example
=======

.. _miami-acm/public-materials: https://github.com/miami-acm/public-materials/tree/master/Presentation%20Materials/2018-02-21%20HTML

Let's say you wanted to publish an essay to the Web
but were in the olden days before Word had HTML support.
You're going to copy your essay into HTML and use CSS so it meets
academic formatting standards.

Go to `miami-acm/public-materials`_ on GitHub and go to
``Presentation Materials/2018-02-21 HTML``.

Code along with us.

----

See you next time!
==================
