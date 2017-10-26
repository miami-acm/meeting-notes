.. _official API: https://canvasapi.readthedocs.io/en/latest/index.html

``canvasapi``
=============

Abridged version of the `official API`_.
``canvasapi`` communicates to Canvas through its
`API <https://canvas.instructure.com/doc/api/index.html>`_

Prequisities
------------

It must be installed::

   pip3 install canvasapi --user

Basics
------

.. code-block:: python

   # Import the Canvas class
   from canvasapi import Canvas

   # Canvas API URL
   institution = 'miamioh'
   api_url = 'https://{institution}.instructure.com/api/v1/'.format(institution=institution)
   # Canvas API key
   api_key = 'p@$$w0rd'

   # Initialize a new Canvas object
   canvas: Canvas = Canvas(api_url, api_key)

``Canvas``
----------

See the following:

* ``get_courses(**kwargs)``: Return a list of active courses for the current user.
* ``get_course_nicknames()``: Return all course nicknames set by the current account.
* ``list_calendar_events(**kwargs)``: List calendar events.

``Course``
----------

* ``get_assignments(**kwargs)``: List all of the assignments in this course.
* ``get_quizzes(**kwargs)``: Return a list of quizzes belonging to this course.
* ``list_tabs(**kwargs)``: List available tabs for a course. Returns a list of navigation tabs available in the current context.

``Assignment``
--------------

* ``points_possible``

When in doubt
-------------

When in doubt, all objects support ``to_json()``, which returns the original JSON Web API.
Most attributes of the JSON are attributes of its object as well.

Notice
------

This document is derived from canvasapi_'s documentation,
which is released under the following license::

   The MIT License (MIT)

   Copyright (c) 2017 University of Central Florida - Center for Distributed Learning

   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in all
   copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.
