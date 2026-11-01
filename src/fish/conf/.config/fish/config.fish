# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/r-sekine/google-cloud-sdk/path.fish.inc' ]; . '/Users/r-sekine/google-cloud-sdk/path.fish.inc'; end

if test -f /Users/r-sekine/.docker/init-fish.sh; source /Users/r-sekine/.docker/init-fish.sh; end # Added by Docker Desktop

# Added by Antigravity
fish_add_path /Users/ryosekine/.antigravity/antigravity/bin

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish ; or true


# Claude Code (native install)
fish_add_path /Users/ryosekine/.local/bin

# Orca はワークツリーごとに fish_history を分けるので、iTerm と同じ共通履歴に戻す
string match -q 'orca_*' -- $fish_history; and set -g fish_history fish
