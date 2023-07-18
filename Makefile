.phony: all install link docs

packages := neovim

dotfiles := $(patsubst configs/%, ${HOME}/.%, ${config_files})

all: install link 

install:
	#sudo apt-get install -y ${packages}

link:
	ln -sf ${HOME}/.config/nvim/init.nvim ${HOME}/.vimrc

docs:
	bash -c scripts/gen-plugin-list.sh
