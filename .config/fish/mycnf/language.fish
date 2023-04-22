#Scala
eval (scalaenv init - | source)

#Ruby
set -x PATH $HOME/.rbenv/bin $PATH
eval (rbenv init - | source)

#Node.js

#Python
set -x PATH $PATH /Users/r-sekine/.pyenv/versions
eval (pyenv init - | source)

#PHP
set -x PATH $HOME/.phpenv/bin $PATH
eval (phpenv init - | source)

#Go
set -x GO111MODULE on
set -x GOPATH $HOME/go
set -x GOENV_ROOT $HOME/.goenv
set -x PATH $GOENV_ROOT/bin $PATH
eval (goenv init - | source)

#Java
set -x JAVA_HOME  /Library/Java/JavaVirtualMachines/openjdk-8.jdk/Contents/Home
set -x PATH $JAVA_HOME $PATH