#!/bin/sh
BREW_CASKS='
homebrew/cask-fonts
'
# zellij: multiplexer
# rust utility
# bat = cat
# bottom = top
# exa = ls
# delta = git management
BREW_PKG='
fish
fzf
asdf
font-fira-code-nerd-font
zellij  
bat
bottom
exa
git-delta
z
rm-improved
'

echo "Install Brew packages"
brew tap $BREW_CASKS
brew install $BREW_PKG