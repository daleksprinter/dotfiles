FORCE:
.PHONY: FORCE

TARGETS := $(HOME)/.vimrc \
			$(HOME)/.vim/coc-settings.json \
			$(HOME)/.vim/autoload/plug.vim \
			$(foreach conf, $(shell ls .vim/config), $(HOME)/.vim/config/$(conf))

all: $(TARGETS)

clean:
	rm $(TARGETS)

$(HOME)/.vim: FORCE
	mkdir -p $@

$(HOME)/.vim/autoload/plug.vim: $(HOME)/.vim FORCE
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

$(HOME)/.vim/config: $(HOME)/.vim FORCE
	mkdir -p $@

$(HOME)/.vim/config/%: $(HOME)/.vim/config
	cp .vim/config/$* $@

$(HOME)/.vim/coc-settings.json: .vim/coc-settings.json $(HOME)/.vim FORCE
	cp $< $@

$(HOME)/.vimrc: .vimrc FORCE
	cp $< $@
