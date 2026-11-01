DIST := $(HOME)
CONFIG_PATH := $(CURDIR)/conf

.PHONY: all
all: \
	$(DIST)/.config/fish/config.fish \
	$(HOME)/.config/fish/conf.d/alias.fish \
	$(HOME)/.config/fish/conf.d/env.fish \
	$(HOME)/.config/fish/conf.d/keybindings.fish \
	$(HOME)/.config/fish/conf.d/language.fish \
	$(HOME)/.config/fish/conf.d/theme.fish \
	$(HOME)/.config/fish/functions/fzf_worktree.fish \
	$(HOME)/.config/fish/functions/claude-add-dir.fish \
	$(HOME)/.config/fish/fish_plugins \

$(DIST)/.config/fish/config.fish: $(CONFIG_PATH)/.config/fish/config.fish
	mkdir -p $(@D)
	ln -sf $< $@

$(DIST)/.config/fish/conf.d/alias.fish:  $(CONFIG_PATH)/.config/fish/conf.d/alias.fish
	mkdir -p $(@D)
	ln -sf $< $@

$(DIST)/.config/fish/conf.d/env.fish:  $(CONFIG_PATH)/.config/fish/conf.d/env.fish
	mkdir -p $(@D)
	ln -sf $< $@

$(DIST)/.config/fish/conf.d/language.fish:  $(CONFIG_PATH)/.config/fish/conf.d/language.fish
	mkdir -p $(@D)
	ln -sf $< $@

$(DIST)/.config/fish/conf.d/theme.fish:  $(CONFIG_PATH)/.config/fish/conf.d/theme.fish
	mkdir -p $(@D)
	ln -sf $< $@

$(DIST)/.config/fish/conf.d/keybindings.fish:  $(CONFIG_PATH)/.config/fish/conf.d/keybindings.fish
	mkdir -p $(@D)
	ln -sf $< $@

$(DIST)/.config/fish/functions/fzf_worktree.fish:  $(CONFIG_PATH)/.config/fish/functions/fzf_worktree.fish
	mkdir -p $(@D)
	ln -sf $< $@

$(DIST)/.config/fish/functions/claude-add-dir.fish:  $(CONFIG_PATH)/.config/fish/functions/claude-add-dir.fish
	mkdir -p $(@D)
	ln -sf $< $@

$(DIST)/.config/fish/fish_plugins:  $(CONFIG_PATH)/.config/fish/fish_plugins
	mkdir -p $(@D)
	ln -sf $< $@
