all:
	$(MAKE) -f fish.mk all
	$(MAKE) -f brew.mk all
	$(MAKE) -f vim.mk all
	$(MAKE) -f tmux.mk all
