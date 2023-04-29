DATE:=$(shell date '+%Y%m%d')
DUMP_DIR:=dump
INTELLIJ_PLUGIN_PATH:=~/Library/Application\ Support/JetBrains/IntelliJIdea2023.1/plugins
REPOS_FILE:=repos-$(DATE)
PLUGINS_FILE:=intellij-plugins-$(DATE)

all: repo plugin

clean:
	rm -rf $(DUMP_DIR)

$(DUMP_DIR):
	mkdir -p $(DUMP_DIR)

repo: $(DUMP_DIR)
	ghq list > $(DUMP_DIR)/$(REPOS_FILE)

plugin: $(DUMP_DIR)
	ls $(INTELLIJ_PLUGIN_PATH) > $(DUMP_DIR)/$(PLUGINS_FILE)
