set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

alias rm 'rmtrash'
alias repos='ghq list -p | peco'
alias repo='cd (repos)'
alias history='history | peco'

rbenv init - | source
set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH /usr/local/opt/mysql-client/bin $PATH
set -x PATH $HOME/.nodebrew/current/bin $PATH
