CONF_DIR=conf
TARGETS:=$(foreach conf, $(shell find $(CONF_DIR) -type f | sed 's/^$(CONF_DIR)\///'), $(HOME)/$(conf)) \
			$(HOME)/.vim/autoload/plug.vim

all: $(TARGETS)

clean:
	rm $(TARGETS)

$(HOME)/%:
	cp $(CONF_DIR)/$* $@

$(HOME)/.vim/autoload/plug.vim:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

