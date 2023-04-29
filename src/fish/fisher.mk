SHELL=/usr/local/bin/fish
DUMP_FILE:=dump
PLUGINS:=$(shell cat $(DUMP_FILE))

setup:
	curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

dump:
	fisher list > $(DUMP_FILE)

install:
	for plugin in $(PLUGINS); \
		fisher install $$plugin; \
	end
