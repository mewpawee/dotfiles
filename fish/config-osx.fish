fish_add_path /opt/homebrew/bin
source /opt/homebrew/opt/asdf/libexec/asdf.fish

if type -q exa
  alias ll "exa -l -g --icons"
  alias ls "exa --icons"
end
