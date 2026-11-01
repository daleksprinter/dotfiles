#PATH
# -P で $PATH を直接編集する（universal の fish_user_paths に古いパスを残さない）
fish_add_path -P --move /opt/homebrew/bin "$HOME/Library/Application Support/Coursier/bin" $HOME/.cargo/bin
