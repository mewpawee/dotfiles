# ~/.zshrc
# starship for cli decoration
eval "$(starship init zsh)"
# using z(zoxide) on zsh
eval "$(zoxide init zsh)"

# Default Text Editor
# export EDITOR=nvim
export EDITOR=hx
export VISUAL=$EDITOR

# commands override
# alias ll="exa -l -g --icons"
# alias ls="exa --icons"
alias ll="lsd -l"
alias ls="lsd"
alias cat="bat"

# PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.foundry/bin:$PATH
export PATH=~/.asdf/shims:$PATH
export PATH=~/.cargo/bin:$PATH
export PATH=~/.bun/bin:$PATH
export PATH=/opt/homebrew/opt/postgresql@15/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin

# source antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load
# antidote detail: https://getantidote.github.io/

# add bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

# pnpm
export PNPM_HOME="~/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

