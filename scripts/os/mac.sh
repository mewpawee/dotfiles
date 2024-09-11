#!/bin/sh
TAP='
homebrew/cask-fonts
'

EDITOR_PKG='
helix
libusb
'

BROWSER_PKG='
brave-browser
'

TERMINAL_PKG='
font-fira-code-nerd-font
warp
starship
zellij  
rectangle
'

# ffmpegthumbnailer - video thumbnails
# unar - archive preview
# jq - JSON preview
# poppler - PDF preview
# fd - file searching
# ripgrep - content searching
# fzf - directory jumping
# zoxide - directory jumping
UTILITY_PKG='
bat
lsd
git-delta
z
rm-improved
bottom
ffmpegthumbnailer
unar
jq
poppler
fd
ripgrep
fzf
zoxide
'

CODING_PKG='
asdf
gpg
bash
'

GENERAL_PKG='
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
