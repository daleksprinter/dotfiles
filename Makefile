TARGETS:=brew fish fisher git idea vim tmux
DUMP_TARGETS:=brew fisher git idea

all:
	@for target in $(TARGETS); do \
		make -C src/$(target) all; \
	done

dump:
	@for target in $(DUMP_TARGETS); do \
		make -C src/$(target) dump; \
	done
