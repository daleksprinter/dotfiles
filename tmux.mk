all: $(HOME)/tmux.conf)

$(HOME)/tmux.conf: .tmux.conf
	cp $< $@