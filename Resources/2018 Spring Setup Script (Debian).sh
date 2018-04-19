#!/bin/sh

if ! command -v python3 > /dev/null ; then
    # https://www.python.org/
    echo "Installing Python 3"
    sudo apt install python3
fi

if ! command -v pipenv > /dev/null ; then
    # https://docs.pipenv.org/
    echo "Installing Pipenv"
    pip3 install pipenv
fi

if ! command -v pg_ctl > /dev/null ; then
    # https://www.postgresql.org/
    echo "Installing PostgreSQL"
    sudo apt install postgresql
fi

if ! command -v make > /dev/null ; then
    # https://www.gnu.org/software/make/
    echo "Installing GNU make"
    sudo apt install make
fi
