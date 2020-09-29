#Golang
set -x GO111MODULE on
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

#Ruby
rbenv init - | source
set -x PATH $HOME/.rbenv/bin $PATH

#Node.js
set -x PATH $PATH ~/.nodebrew/current/bin/

#Java
set -x JAVA_HOME  /Users/r-sekine/Library/Java/JavaVirtualMachines/adopt-openj9-1.8.0_265/Contents/Home
set -x PATH $JAVA_HOME $PATH

#scala
set -x PATH $PATH /usr/local/bin/metals-vim

#other
set -x PATH /usr/local/opt/mysql-client/bin $PATH
set -x PATH $PATH /usr/local/opt/binutils/bin
set -x PATH /usr/local/opt/gnu-sed/libexec/gnubin $PATH