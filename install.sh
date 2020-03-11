# symbolic link
ln -sfv $PWD/.vimrc $HOME/.vimrc
ln -sfv $PWD/.tmux.conf $HOME/.tmux.conf 
ln -sfv $PWD/.vim $HOME/.vim
ln -sfv $PWD/config.fish $HOME/.config/fish/config.fish

# install vim plugins
vim -c 'PlugInstall | q | q'
