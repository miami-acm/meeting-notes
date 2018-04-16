#!/usr/bin/env powershell

if (!(command scoop 2> $null)) {
    # http://scoop.sh/
    Write-Output "Installing Scoop"
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
}

if (!(command py 2> $null) -and !(command python 2> $null)) {
    # https://www.python.org/
    Write-Output "Installing Python 3"
    scoop install python3
}

if (!(command pipenv 2> $null)) {
    # https://docs.pipenv.org/
    Write-Output "Installing Pipenv"
    pip3 install pipenv
}

if (!(command pg_ctl 2> $null)) {
    # https://www.postgresql.org/
    Write-Output "Installing PostgreSQL"
    scoop install postgresql
}

if (!(command make 2> $null)) {
    # https://www.gnu.org/software/make/
    Write-Output "Installing GNU make"
    scoop install make
}
