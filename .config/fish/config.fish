source $HOME/.config/fish/mycnf/alias.fish
source $HOME/.config/fish/mycnf/env.fish
source $HOME/.config/fish/mycnf/fzf.fish
source $HOME/.config/fish/mycnf/theme.fish
source $HOME/.config/fish/mycnf/language.fish
source $HOME/.config/fish/mycnf/nvm.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/r-sekine/google-cloud-sdk/path.fish.inc' ]; . '/Users/r-sekine/google-cloud-sdk/path.fish.inc'; end

source /Users/r-sekine/.docker/init-fish.sh || true # Added by Docker Desktop
