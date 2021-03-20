all: vim tmux.conf config/fish

vim-all: vim vim-plug vimrc

vim-plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vimrc:
	ln -sfv $(PWD)/.vimrc $(HOME)/.vimrc

vim:
	rm $(HOME)/.vim
	ln -sfnv $(PWD)/.vim $(HOME)/.vim

tmux.conf:
	ln -sfv $(PWD)/.tmux.conf $(HOME)/.tmux.conf

config/fish:
	mkdir -p $(HOME)/.config
	ln -sfnv $(PWD)/.config/fish $(HOME)/.config/fish
