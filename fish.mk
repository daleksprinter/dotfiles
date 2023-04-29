TARGETS:=$(HOME)/.config/fish/mycnf $(HOME)/.config/fish/config.fish

all: $(TARGETS)

$(HOME)/.config:
	mkdir -p $@

$(HOME)/.config/fish: $(HOME)/.config
	mkdir -p $@

$(HOME)/.config/fish/mycnf: fish/mycnf $(HOME)/.config/fish
	cp -r $< $@

$(HOME)/.config/fish/config.fish: fish/config.fish $(HOME)/.config/fish
	cp $< $@

clean:
	rm -rf $(TARGETS)
