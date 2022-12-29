source $HOME/.config/fish/alias.fish
source $HOME/.config/fish/env.fish
source ~/.functions/func.fish
source $HOME/.config/fish/fzf.fish
source $HOME/.config/fish/theme.fish
source $HOME/.config/fish/complete.fish

eval (scalaenv init - | source)

bind \cy __tmux_session_fzf
function __tmux_session_fzf
    set issession ( echo $TMUX | cut -d ',' -f 2)
    set session (tmux ls | fzf | cut -d ':' -f 1)
    test -n $issession && tmux switch-client -t $session || tmux a -t $session
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/r-sekine/google-cloud-sdk/path.fish.inc' ]; . '/Users/r-sekine/google-cloud-sdk/path.fish.inc'; end


function nvm
   bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent
