FORCE:
.PHONY: FORCE
DUMP_FILE:=dump
INTELLIJ_PLUGIN_PATH:=~/Library/Application\ Support/JetBrains/IntelliJIdea2023.1/plugins

all: $(HOME)/.idevimrc

clean:
	rm -rf $(DUMP_FILE)

dump:
	ls $(INTELLIJ_PLUGIN_PATH) > $(DUMP_FILE)

$(HOME)/.ideavimrc: .ideavimrc FORCE
	cp $< $@
