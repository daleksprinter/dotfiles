FORCE:
.PHONY: FORCE

TARGETS := $(HOME)/.vimrc \
			$(HOME)/.vim/config \
			$(HOME)/.vim/coc-settings.json \
			$(HOME)/.vim/autoload/plug.vim

all: $(TARGETS)

clean:
	rm -rf $(TARGETS)

$(HOME)/.vim: FORCE
	mkdir -p $@

$(HOME)/.vim/autoload/plug.vim: $(HOME)/.vim FORCE
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#FIXME: 複数回実行したらconfigがネストしていく
$(HOME)/.vim/config: .vim $(HOME)/.vim FORCE
	cp -r $< $@

$(HOME)/.vim/coc-settings.json: .vim $(HOME)/.vim FORCE
	cp $< $@

$(HOME)/.vimrc: .vimrc FORCE
	cp $< $@
