set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

alias rm 'rmtrash'
alias repos='ghq list -p | peco'
alias repo='cd (repos)'
