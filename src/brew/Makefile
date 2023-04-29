FORCE:
.PHONY: install dump tap bundle FORCE

all: setup bundle

setup: install tap

install:
	/bin/bash -c "`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh`"

tap:
	brew tap Homebrew/bundle

bundle: Brewfile
	brew bundle

dump: Brewfile

Brewfile: FORCE
	brew bundle dump --force
