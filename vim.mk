all:
	$(MAKE) $(HOME)/.vimrc
	$(MAKE) $(HOME)/.vim/config
	$(MAKE) $(HOME)/.vim/autoload/plug.vim

$(HOME)/.vim:
	mkdir $@

$(HOME)/.vim/autoload/plug.vim: $(HOME)/.vim
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

$(HOME)/.vim/config: $(HOME)/.vim .vim/config
	cp -r $< $@

$(HOME)/.vim/coc-settings.json: $(HOME)/.vim .vim/coc-settings.json
	cp $< $@

$(HOME)/.vimrc: .vimrc
	cp $< $@
