DATE:=$(shell date '+%Y%m%d')
DUMP_DIR:=dump
INTELLIJ_PLUGIN_PATH:=~/Library/Application\ Support/JetBrains/IntelliJIdea2023.1/plugins
PLUGINS_FILE:=intellij-plugins-$(DATE)

all: repo plugin

clean:
	rm -rf $(DUMP_DIR)

$(DUMP_DIR):
	mkdir -p $(DUMP_DIR)


plugin: $(DUMP_DIR)
	ls $(INTELLIJ_PLUGIN_PATH) > $(DUMP_DIR)/$(PLUGINS_FILE)
