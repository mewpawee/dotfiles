# alias
# alias vi="lvim"

# Specific Config for each distro
switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

# need this for yarn with asdf
export NPM_TOKEN=""
export EDITOR=hx

# Export PATH
fish_add_path ~/.local/bin
fish_add_path ~/.foundry/bin
fish_add_path ~/.yarn/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/.asdf/installs/rust/stable/bin

# Use starship config
starship init fish | source

export PATH="$PATH:/Users/mewpawee/.foundry/bin"

export PATH="$PATH:/Users/mewpawee/.foundry/bin"

export PATH="$PATH:/Users/mewpawee/.foundry/bin"

export PATH="$PATH:/Users/paweetantivasdakarn/.foundry/bin"
