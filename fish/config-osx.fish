fish_add_path /opt/homebrew/sbin
source /opt/homebrew/opt/asdf/libexec/asdf.fish

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
  alias ls "exa --icons"
end
