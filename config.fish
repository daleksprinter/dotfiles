set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

alias rm 'rmtrash'
alias repos='ghq list -p | peco'
alias repo='cd (repos)'

if which rbenv > /dev/null
 eval (rbenv init -)
end

set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH /usr/local/opt/mysql-client/bin $PATH
