.PHONY: install dump tap bundle

setup: install tap

all: setup bundle

install:
	/bin/bash -c "`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh`"

tap:
	brew tap Homebrew/bundle

bundle:
	brew bundle

dump:
	brew bundle dump --force
