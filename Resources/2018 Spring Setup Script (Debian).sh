#!/bin/sh

sudo apt-get update

if ! command -v git > /dev/null ; then
    echo "Installing git"
    sudo apt-get install git -y
fi

if ! command -v python3 > /dev/null ; then
    # https://www.python.org/
    echo "Installing Python 3"
    sudo apt-get install python3 -y
fi

if ! command -v pg_ctl > /dev/null ; then
    # https://www.postgresql.org/
    echo "Installing PostgreSQL"
    sudo apt-get install postgresql -y

    export PATH="/usr/lib/postgresql/9.5/bin/:$PATH"
    # Persist change to PATH
    echo '' >> ~/.bashrc
    echo '# Added by miami-acm/public-materials Setup Script' >> ~/.bashrc
    echo 'export PATH="/usr/lib/postgresql/9.5/bin/:$PATH"' >> ~/.bashrc
fi

if ! command -v make > /dev/null ; then
    # https://www.gnu.org/software/make/
    echo "Installing GNU make"
    sudo apt-get install make -y
fi

if ! command -v pipenv > /dev/null ; then
    # https://docs.pipenv.org/
    echo "Installing Pipenv"
    pip3 install pipenv --user
fi
