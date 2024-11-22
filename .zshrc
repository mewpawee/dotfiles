# ~/.zshrc
# starship for cli decoration
eval "$(starship init zsh)"
# using z(zoxide) on zsh
eval "$(zoxide init zsh)"

# Default Text Editor
export EDITOR=hx
export VISUAL=$EDITOR

# commands override
# alias ll="exa -l -g --icons"
# alias ls="exa --icons"
# alias ll="eza --icons -l"
alias ld="eza --icons -lD"
alias lf="eza --icons -lf --color=always | grep -v /"
alias lh="eza --icons -dl .* --group-directories-first"
alias ll="eza --icons -al --group-directories-first"
alias ls="eza --icons -alf --color=always --sort=size | grep -v /"
alias lt="eza --icons -al --sort=modified"

alias cat="bat"

# PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.foundry/bin:$PATH
export PATH=~/.asdf/shims:$PATH
export PATH=~/.cargo/bin:$PATH
export PATH=~/.bun/bin:$PATH
export PATH=/opt/homebrew/opt/postgresql@15/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin

# pnpm
export PNPM_HOME="~/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# source antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load
# antidote detail: https://getantidote.github.io/

# add bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"


