TARGETS:=$(HOME)/.config/fish/conf.d $(HOME)/.config/fish/config.fish

all: $(TARGETS)

$(HOME)/.config:
	mkdir -p $@

$(HOME)/.config/fish: $(HOME)/.config
	mkdir -p $@

#FIXME: 複数回実行したらconf.dがネストしていく
$(HOME)/.config/fish/conf.d: conf.d $(HOME)/.config/fish
	cp -r $< $@

$(HOME)/.config/fish/config.fish: config.fish $(HOME)/.config/fish
	cp $< $@

clean:
	rm -rf $(TARGETS)
