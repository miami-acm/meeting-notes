#!/usr/bin/env powershell

if (!(command scoop 2> $null)) {
    # http://scoop.sh/
    echo "Installing Scoop"
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
}

if (!(command py 2> $null) -and !(command python 2> $null)) {
    # https://www.python.org/
    echo "Installing Python 3"
    scoop install python3
}

if (!(command pipenv 2> $null)) {
    # https://docs.pipenv.org/
    echo "Installing Pipenv"
    pip3 install pipenv
}
