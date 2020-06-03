#!/usr/local/bin/fish

# symbolic link
ln -sfv $PWD/.vimrc $HOME/.vimrc
ln -sfv $PWD/.tmux.conf $HOME/.tmux.conf 
ln -sfv $PWD/.tigrc $HOME/.tigrc

ln -sfnv $PWD/.vim $HOME/.vim
ln -sfnv $PWD/.config $HOME/.config
ln -sfnv $PWD/.functions $HOME/.functions

# install vim plugins
vim -c 'PlugInstall | q | q'
