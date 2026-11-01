.PHONY: all
all:
	git config core.hooksPath .githooks
	$(MAKE) -C src/fish
	$(MAKE) -C src/vim
	$(MAKE) -C src/tmux
