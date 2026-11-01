.PHONY: all
all:
	git config core.hooksPath .githooks
	$(MAKE) -C src/fish
	$(MAKE) -C src/vim
	$(MAKE) -C src/tmux
	$(MAKE) -C src/ideavim
	$(MAKE) -C src/karabiner
	$(MAKE) -C src/gh
