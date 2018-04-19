#!/usr/bin/env powershell

if (!(command scoop 2> $null)) {
    # http://scoop.sh/
    Write-Output "Installing Scoop"
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh')
}

if (!(command py 2> $null) -and !(command python 2> $null)) {
    # https://www.python.org/
    Write-Output "Installing Python 3"
    scoop install python3
}

if (!(command pip3 2> $null)) {
    # Python is installed but pip is not in PATH
    # This is probably due to a system installation (not via scoop)
    $SystemPythonInstallations = Get-ChildItem C:\Python3*
    $env:PATH += ";C:\$($SystemPythonInstallations[-1])\Scripts"
}

if (!(command pipenv 2> $null)) {
    # https://docs.pipenv.org/
    Write-Output "Installing Pipenv"
    pip3 install pipenv --user
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
