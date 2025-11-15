#!/bin/bash

cp -r ~/.config/nvim ~/dotfiles/

if [ ! -d ~/dotfiles/tmux ]; then
	mkdir ~/dotfiles/tmux
fi

cp ~/.tmux.conf ~/dotfiles/tmux/

stylua ~/dotfiles/nvim
