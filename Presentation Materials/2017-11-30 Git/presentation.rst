.. _Hovercraft: https://github.com/regebro/hovercraft
.. Suggested template: https://github.com/sixfeetup/sixfeetup_hovercraft

  :title: ACM Meeting Slides
  :data-transition-duration: 1000

This file is meant to be viewed using Hovercraft_.
To view, execute::

  pipenv run hovercraft -t path/to/sixfeetup_hovercraft/template.cfg presentation.rst

----

Hope you had a good Thanksgiving break! 🦃
==========================================

----

.. image:: https://imgs.xkcd.com/comics/digital_resource_lifespan_2x.png
   :height: 600px

:title: I spent a long time thinking about how to design a system for long-term organization and storage of subject-specific informational resources without needing ongoing work from the experts who created them, only to realized I'd just reinvented libraries.

(https://xkcd.com/1909/)

----

Git
===

* A version control system (VCS)
* Very popular
* Originally authored by Linus Torvalds (author of Linux)

----

Paradigm
========

#. (Download code)
#. Edit code
#. Add the changes to Git
#. "Commit" to your changes
#. Repeat
#. (Share your changes with the world)

----

Tools of the trade
==================

.. _GitHub Desktop: https://desktop.github.com/
.. _GitKraken: https://www.gitkraken.com/

* ``git``: A command-line program; provides raw control
* GUI interfaces

   * `GitHub Desktop`_: A cross-platform Electron app built with React and TypeScript
   * `GitKraken`_: A commericial program with an intuitive Git-history view

----

Let's look at an example
========================

.. _DefinitelyTyped/DefinitelyTyped: https://github.com/DefinitelyTyped/DefinitelyTyped

Checkout the `DefinitelyTyped/DefinitelyTyped`_ repo.

In GitHub Desktop, go to File >> Clone Repository >> URL.

Or with ``git``,

.. code-block:: bash

   git clone https://github.com/DefinitelyTyped/DefinitelyTyped

----

Git diffs
=========

Show what someone has changed at a given moment.

Look at the "History" tab in GitHub Desktop or ``git log`` then ``git show commit_hash``.

----

Let's make some sample changes
==============================

Look at the ``README.md`` file in your local copy of the repo.

For this example, let's add a line under "How can I contribute?"
to thank users for thinking about contributing.

----

Commiting
=========

Save the changes.

Notice the red and green lines in GitHub Desktop (or ``git diff``).

For a real contribution, we would double-check what we changed and make sure
it is error-free.

Once we are confident in our changes, we are going to "commit" to them.

----

Another note on history
=======================

See the History tab (``git log``).

.. note::

   Notice that we are now listed at the top.

   It's worth noting that we won't show up on any other computer
   since we have not uploaded these changes.

----

Branching
=========

GitKraken can give us an insight as to what the repo looks like.

----

Branching off
=============

Create a new branch and rename the project to "CertainlyTyped".

Create a separate branch off of ``master`` and add a slogan for DefinitelyTyped,
like "Types for the World!"

----

Merging
=======

Once the work on a branch is complete, it can be merged back into the default branch
(called ``master``).

Merge the slogan branch into ``master``.

Now, merge the project-rename branch into ``master``.

----

Remotes
=======

In a real world scenario, you will be likely sharing code with other people
(team project/workplace/etc).

A server that coordinates the sharing of Git commits is called a "remote".

* GitHub is a very popular remote.

Uploading ("pushing") and downloading ("pulling") from a remote
can be done in the top-right corner in GitHub Desktop
(or with ``git push`` and ``git pull``).

----

See you next time!
==================
