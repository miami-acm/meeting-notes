.. _Pipenv: https://docs.pipenv.org/
.. _Flask: http://flask.pocoo.org/

Flask Development Server
========================

Use the ``Makefile`` we've made for your convenience. It has the following commands::

  make init
  make run
  make stop

If ``pipenv install`` gives an error, delete your ``~/.virtualenvs/`` directory and try installing again::

  rm ~/.virtualenvs/ -R

License
-------

MIT license except static assets under ``static/``.
