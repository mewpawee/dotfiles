#!/bin/sh
EDITOR_PKG='
neovim
helix
libusb
'

BROWSER_PKG='
microsoft-edge
brave-browser
'
TERMINAL_PKG='
font-fira-code-nerd-font
warp
fish
starship
zellij  
rectangle
'

UTILITY_PKG='
bat
exa
git-delta
z
ripgrep
fd
fzf
rm-improved
bottom
'

CODING_PKG='
asdf
'

GENERAL_PKG='
spotify
'

echo "Install Brew packages"
brew install $EDITOR_PKG
brew install $BROWSER_PKG
brew install $TERMINAL_PKG
brew install $UTILITY_PKG
brew install $CODING_PKG
brew install $GENERAL_PKG
