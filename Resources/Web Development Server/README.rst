.. _Pipenv: https://docs.pipenv.org/
.. _Flask: http://flask.pocoo.org/

Flask Development Server
========================

First, if you have not done so already, use Pipenv_ to install Flask_::

  pipenv install

If this gives an error, delete your ``~/.virtualenvs/`` directory and try installing again::

  rm ~/.virtualenvs/ -R

To run the server, execute::

  pipenv run python server.py
