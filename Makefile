init:
	git config --local include.path ../.gitconfig
	git submodule update --init --recursive
