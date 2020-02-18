ln -sfv $HOME/dotfiles/.vimrc $HOME/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sfv $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
