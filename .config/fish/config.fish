source $HOME/.config/fish/alias.fish
source $HOME/.config/fish/env.fish
source ~/.functions/func.fish
source $HOME/.config/fish/fzf.fish
source $HOME/.config/fish/theme.fish
source $HOME/.config/fish/complete.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/r-sekine/google-cloud-sdk/path.fish.inc' ]; . '/Users/r-sekine/google-cloud-sdk/path.fish.inc'; end

eval (scalaenv init - | source)

bind \cy __tmux_session_fzf
function __tmux_session_fzf
    tmux ls | fzf | cut -d ':' -f 1 | xargs tmux switch -t
end
