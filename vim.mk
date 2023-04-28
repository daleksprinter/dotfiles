FORCE:
.PHONY: FORCE

all: $(HOME)/.vimrc $(HOME)/.vim/config $(HOME)/.vim/coc-settings.json $(HOME)/.vim/autoload/plug.vim

$(HOME)/.vim: FORCE
	mkdir -p $@

$(HOME)/.vim/autoload/plug.vim: $(HOME)/.vim FORCE
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

$(HOME)/.vim/config: .vim/config $(HOME)/.vim FORCE
	cp -r $< $@

$(HOME)/.vim/coc-settings.json: .vim/coc-settings.json $(HOME)/.vim FORCE
	cp $< $@

$(HOME)/.vimrc: .vimrc FORCE
	cp $< $@
