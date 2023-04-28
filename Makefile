all: tmux.conf config/fish

tmux.conf:
	ln -sfv $(PWD)/.tmux.conf $(HOME)/.tmux.conf

config/fish:
	mkdir -p $(HOME)/.config
	ln -sfnv $(PWD)/.config/fish $(HOME)/.config/fish

dump: repo-dump plugin-dump

REPOS_FILE:=repos-$(shell date '+%Y%m%d')
repo-dump:
	ghq list > $(REPOS_FILE)

INTELLIJ_PLUGIN_PATH:=~/Library/Application\ Support/JetBrains/IntelliJIdea2023.1/plugins
PLUGINS_FILE:=intellij-plugins-$(shell date '+%Y%m%d')
plugin-dump:
	ls $(INTELLIJ_PLUGIN_PATH) > $(PLUGINS_FILE)
