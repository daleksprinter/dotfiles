CONF_PATH=$(HOME)/.config/fish
TARGETS:=$(CONF_PATH)/config.fish $(foreach conf, $(shell ls conf.d), $(CONF_PATH)/conf.d/$(conf))

all: $(TARGETS)

$(HOME)/.config:
	mkdir -p $@

$(CONF_PATH): $(HOME)/.config
	mkdir -p $@

$(CONF_PATH)/config.fish: config.fish $(CONF_PATH)
	cp $< $@

$(CONF_PATH)/conf.d/%:
	cp conf.d/$* $@

clean:
	rm $(TARGETS)
