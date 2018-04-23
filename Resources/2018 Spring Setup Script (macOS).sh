#!/bin/sh

if ! command -v brew > /dev/null ; then
    # https://brew.sh/
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

if ! command -v python3 > /dev/null ; then
    # https://www.python.org/
    echo "Installing Python 3"
    brew install python3
fi

if ! command -v pipenv > /dev/null ; then
    # https://docs.pipenv.org/
    echo "Installing Pipenv"
    pip3 install pipenv --user
fi

if ! command -v pg_ctl > /dev/null ; then
    # https://www.postgresql.org/
    echo "Installing PostgreSQL"
    brew install postgresql
fi

if ! command -v make > /dev/null ; then
    # https://www.gnu.org/software/make/
    echo "Installing GNU make"
    brew install make
fi
