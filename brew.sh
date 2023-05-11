BREW_CASKS='
homebrew/cask-fonts
'
# zellij: multiplexer
BREW_PKG='
fzf
asdf
font-fira-code-nerd-font
zellij  
'

# rust utility
# bat = cat
# exa = ls
# delta = git management
RUST_PROGRAMS='
bat
exa
git-delta
z
rm-improved
'

brew tap $BREW_CASKS
brew install $BREW_PKG
brew install $RUST_PROGRAMS
