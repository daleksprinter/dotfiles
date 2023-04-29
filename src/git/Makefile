FORCE:
.PHONY: FORCE
DUMP_FILE:=dump

all: $(HOME)/.gitconfig

$(HOME)/.gitconfig: .gitconfig FORCE
	cp -f $< $@

dump:
	ghq list > $(DUMP_FILE)

get:
	cat $(DUMP_FILE) | ghq get --parallel

clean:
	rm $(DUMP_FILE)
