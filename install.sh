#!/usr/local/bin/fish
# symbolic link
ln -sfv $PWD/.vimrc $HOME/.vimrc
ln -sfv $PWD/.tmux.conf $HOME/.tmux.conf 
ln -sfv $PWD/.vim $HOME/.vim
ln -sfv $PWD/config.fish $HOME/.config/fish/config.fish
ln -sfv $PWD/.functions $HOME/.functions
# install vim plugins
vim -c 'PlugInstall | q | q'
