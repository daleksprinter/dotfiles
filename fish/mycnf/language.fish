#Scala
eval (scalaenv init - | source)

#Ruby
set -x PATH $HOME/.rbenv/bin $PATH
eval (rbenv init - | source)

#Node.js
#@see https://eshlox.net/2019/01/27/how-to-use-nvm-with-fish-shell/
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