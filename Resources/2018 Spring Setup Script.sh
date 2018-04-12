if ! command -v brew > /dev/null ; then
    # https://brew.sh/
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! command -v python3 > /dev/null ; then
    # https://www.python.org/
    echo "Installing Python 3"
    brew install python3
fi

if ! command -v pipenv > /dev/null ; then
    # https://docs.pipenv.org/
    echo "Installing Pipenv"
    pip3 install pipenv
fi
