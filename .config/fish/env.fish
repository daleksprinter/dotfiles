#Golang
set -x GO111MODULE on
set -x GOPATH $HOME/go


# phpenv init - | source

#Ruby
rbenv init - | source


#Java
set -x JAVA_HOME  /Library/Java/JavaVirtualMachines/openjdk-8.jdk/Contents/Home
# set -x JAVA_HOME  /Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home

#other

set -x MANPAGER "vim -M +MANPAGER -c 'set nolist' -"


# function history
#     builtin history --show-time='%Y/%m/%d %H:%M:%S ' | sort
# end



#PATH
set -x PATH /usr/local/Cellar/dosfstools/4.2/sbin $PATH
set -x PATH /usr/local/Cellar/llvm/11.1.0_1/bin $PATH
set -x PATH /usr/local/opt/mysql-client/bin $PATH
set -x PATH $PATH /usr/local/opt/binutils/bin
set -x PATH /usr/local/opt/gnu-sed/libexec/gnubin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH ~/.phpenv/bin $PATH
set -x PATH $JAVA_HOME $PATH
#scala
set -x PATH $PATH /usr/local/bin/metals-vim

set -x PATH $PATH $GOPATH/bin
# set -x PATH /usr/local/opt/php@7.2/bin $PATH
set -x PATH $HOME/.rbenv/bin $PATH
#Node.js
set -x PATH $PATH ~/.nodebrew/current/bin/

set -x PATH $PATH ~/bin
set -x PATH $PATH /Users/r-sekine/Library/Application Support/Coursier/bin
set -x PATH $PATH /Users/r-sekine/.pyenv/versions/3.6.13/bin

set -x AWS_DEFAULT_PROFILE zucks-zgok
