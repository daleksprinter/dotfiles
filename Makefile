TARGETS:=brew fish fisher git idea vim tmux

all:
	@for target in $(TARGETS); do \
		make -C $(target) all; \
	done
