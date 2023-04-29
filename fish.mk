TARGETS:=$(HOME)/.config/fish

all: $(TARGETS)

$(HOME)/.config:
	mkdir -p $@

$(HOME)/.config/fish: fish $(HOME)/.config
	cp -r $< $@

clean:
	rm -rf $(TARGETS)
