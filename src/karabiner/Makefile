# Karabiner は karabiner.json 単体の symlink だと変更を検知できないので、ディレクトリごと張る
# https://karabiner-elements.pqrs.org/docs/manual/misc/configuration-file-path/
.PHONY: all
all:
	mkdir -p $(HOME)/.config
	test -L $(HOME)/.config/karabiner || ln -s $(CURDIR) $(HOME)/.config/karabiner
