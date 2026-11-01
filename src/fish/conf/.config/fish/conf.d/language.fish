#Ruby
fish_add_path -P $HOME/.rbenv/bin
rbenv init - fish --no-rehash | source

#Node.js
set -gx NVM_DIR "$HOME/.nvm"
# nvm alias default のバージョンを使う
test -f $NVM_DIR/alias/default; and fish_add_path -P $NVM_DIR/versions/node/v(string replace -r '^v' '' (cat $NVM_DIR/alias/default))/bin
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

#Python
pyenv init - fish --no-rehash | source

#Go
set -x GOPATH $HOME/go
set -x GOENV_ROOT $HOME/.goenv
# goenv global のバージョンを使う
test -f $GOENV_ROOT/version; and fish_add_path -P $GOENV_ROOT/versions/(cat $GOENV_ROOT/version)/bin

#Java は SDKMAN（sdkman-for-fish）に任せる
