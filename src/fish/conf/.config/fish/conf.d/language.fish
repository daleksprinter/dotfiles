#Scala
eval (scalaenv init - | source)

#Ruby
set -x PATH $HOME/.rbenv/bin $PATH
eval (rbenv init - | source)

#Node.js
set -gx NVM_DIR "$HOME/.nvm"
fish_add_path "$NVM_DIR/versions/node/v24.5.0/bin"
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

#Python
set -x PATH $PATH /Users/r-sekine/.pyenv/versions
eval (pyenv init - | source)

#PHP
#TODO https://github.com/daleksprinter/dotfiles/issues/8

#Go
set -x GO111MODULE on
set -x GOPATH $HOME/go
set -x GOENV_ROOT $HOME/.goenv
set -x PATH $GOENV_ROOT/bin $PATH
eval (goenv init - | source)

#Java
set -x JAVA_HOME  /Library/Java/JavaVirtualMachines/openjdk-8.jdk/Contents/Home
set -x PATH $JAVA_HOME $PATH
