# ~/.zshrc
# starship for cli decoration
eval "$(starship init zsh)"
# using z(zoxide) on zsh
eval "$(zoxide init zsh)"

# commands override
alias ll="exa -l -g --icons"
alias ls="exa --icons"

# PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.foundry/bin:$PATH
export PATH=~/.asdf/shims:$PATH
export PATH=~/.cargo/bin:$PATH
export PATH=~/.bun/bin:$PATH
export PATH=/opt/homebrew/opt/postgresql@15/bin:$PATH

# Default Text Editor
# export EDITOR=nvim
export EDITOR=hx
export VISUAL=$EDITOR

# using antidote: https://getantidote.github.io/
# source antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# bun completions
[ -s "/Users/mewpawee/.bun/_bun" ] && source "/Users/mewpawee/.bun/_bun"

# pnpm
export PNPM_HOME="/Users/paweetantivasdakarn/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH=$PATH:$(go env GOPATH)/bin
