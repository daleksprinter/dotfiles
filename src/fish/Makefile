CONF_DIR=conf
CONF_LIST:=$(foreach conf, $(shell find $(CONF_DIR) -type f | sed 's/^$(CONF_DIR)\///'), $(HOME)/$(conf))
TARGETS:= $(CONF_LIST)

all: $(TARGETS)

clean:
	rm $(TARGETS)

list:
	echo $(TARGETS)

$(HOME)/%:
	cp $(CONF_DIR)/$* $@

