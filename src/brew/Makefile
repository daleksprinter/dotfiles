.PHONY: install dump tap bundle

all: setup bundle

setup: install tap

install:
	/bin/bash -c "`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh`"

tap:
	brew tap Homebrew/bundle

bundle: Brewfile
	brew bundle

Brewfile:
	brew bundle dump --force
