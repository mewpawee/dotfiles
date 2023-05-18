source ~/.asdf/asdf.fish
if type -q exa
  alias ll "exa -l -g --icons"
  alias ls "exa --icons"
  alias bat "batcat"
end
