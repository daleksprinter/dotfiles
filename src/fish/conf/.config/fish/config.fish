# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end

if test -f $HOME/.docker/init-fish.sh; source $HOME/.docker/init-fish.sh; end # Added by Docker Desktop

# Added by Antigravity
fish_add_path $HOME/.antigravity/antigravity/bin

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish ; or true


# Claude Code (native install)
fish_add_path $HOME/.local/bin

# Orca はワークツリーごとに fish_history を分けるので、iTerm と同じ共通履歴に戻す
string match -q 'orca_*' -- $fish_history; and set -g fish_history fish
