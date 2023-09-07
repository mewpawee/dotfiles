#!/bin/sh
TAP='
homebrew/cask-fonts
'

EDITOR_PKG='
neovim helix
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
gpg
tmux
bash
'

GENERAL_PKG='
notion
logseq
bitwarden
discord
spotify
zoom
anydesk
keyboardcleantool
'

echo "Check if Homebrew Installed"
if ! command -v brew &> /dev/null
then
    echo "Homebrew could not be found"
    echo "Install Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Install Brew packages"
# brew bundle install --file ~/.config/os/Brewfile
brew tap $TAP
brew install $EDITOR_PKG
brew install $BROWSER_PKG
brew install $TERMINAL_PKG
brew install $UTILITY_PKG
brew install $CODING_PKG
brew install $GENERAL_PKG
