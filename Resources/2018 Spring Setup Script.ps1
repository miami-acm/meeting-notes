if (!(command scoop 2> $null)) {
    # http://scoop.sh/
    echo "Installing Scoop"
    Set-ExecutionPolicy RemoteSigned -scope CurrentUser
    iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
}
