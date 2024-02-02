#!/bin/sh

create symlinks
sh gum/create-link.sh
sh zellij/create-link.sh
ln -s ~/.config/.zshrc ~/.zshrc
ln -s ~/.config/.zsh_plugins.txt ~/.zsh_plugins.txt
