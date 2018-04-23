#!/usr/bin/env powershell

if (!(command scoop 2> $null)) {
    # http://scoop.sh/
    Write-Output "Installing Scoop"
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    Invoke-Expression (new-object net.webclient).downloadstring('https://get.scoop.sh')
}
else {
    Write-Output "Scoop is already installed"
    scoop --version
}

if (!(command git 2> $null)) {
    # https://www.gnu.org/software/make/
    Write-Output "Installing git"
    scoop install git
}
else {
    Write-Output "git is already installed"
    git --version
}

if (!(command py 2> $null)) {
    # https://www.python.org/
    Write-Output "Installing Python 3"
    scoop install python3
}
else {
    Write-Output "Python is already installed"
    py -3 --version
}

if (!(command pg_ctl 2> $null)) {
    # https://www.postgresql.org/
    Write-Output "Installing PostgreSQL"
    scoop install postgresql
}
else {
    Write-Output "PostgreSQL is already installed"
    pg_ctl --version
}


if (!(command make 2> $null)) {
    # https://www.gnu.org/software/make/
    Write-Output "Installing GNU make"
    scoop install make
}
else {
    Write-Output "GNU make is already installed"
    make --version
}

if (!(command grep 2> $null)) {
    # https://www.gnu.org/software/make/
    Write-Output "Installing GNU grep"
    scoop install grep
}
else {
    Write-Output "GNU make is already installed"
    grep --version
}

if (!(py -3 -m pipenv 2> $null)) {
    # https://docs.pipenv.org/
    Write-Output "Installing Pipenv"
    py -3 -m pip install pipenv --user
}
else {
    Write-Output "Pipenv is already installed"
    py -3 -m pipenv --version
}

$PythonVersion = (py -3 --version | grep -Po "(\d)\.(\d)").Replace('.', '')
$PythonUserDirectory = "$($env:APPDATA)\Python\Python$($PythonVersion)\Scripts"

if (!($env:Path.Contains($PythonUserDirectory))) {
    Write-Output "Adding 'pip3 install --user' directory to user PATH"
    (Invoke-WebRequest https://gist.githubusercontent.com/mkropat/c1226e0cc2ca941b23a9/raw/b34d4f3f10ac4e85b9cf937998a1fa930b48389a/EnvPaths.psm1).Content > EnvPaths.psm1
    Import-Module .\EnvPaths.psm1
    Add-EnvPath ";$($PythonUserDirectory)" User
}
else {
    Write-Output "'pip3 install --user' directory is already in PATH"
}
