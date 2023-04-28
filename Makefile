all: tmux.conf config/fish

tmux.conf:
	ln -sfv $(PWD)/.tmux.conf $(HOME)/.tmux.conf

config/fish:
	mkdir -p $(HOME)/.config
	ln -sfnv $(PWD)/.config/fish $(HOME)/.config/fish


brew:
	/bin/bash -c "`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh`"
