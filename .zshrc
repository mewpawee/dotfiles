# ~/.zshrc
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias ll="exa -l -g --icons"
alias ls="exa --icons"

export PATH=~/.local/bin:$PATH
export PATH=~/.foundry/bin:$PATH
export PATH=~/.asdf/shims:$PATH
export PATH=~/.cargo/bin:$PATH
export PATH=~/.bun/bin:$PATH
export PATH="$PATH:/Users/mewpawee/.huff/bin"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export EDITOR=lvim
# export PRETTIERD_DEFAULT_CONFIG=~/.config/.prettierrc
# # load zgenom
# source "${HOME}/.zgenom/zgenom.zsh"

# #if the init script doesn't exist
# if ! zgenom saved; then

#   # specify plugins here
#   # zgenom ohmyzsh plugins/sudo
#   zgenom ohmyzsh plugins/z


#   # generate the init script from plugins above
#   zgenom save
# fi
