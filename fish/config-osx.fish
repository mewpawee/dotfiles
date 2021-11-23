fish_add_path /opt/homebrew/sbin
source /opt/homebrew/opt/asdf/libexec/asdf.fish

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

#EXA Colors
set -gx LS_COLORS "di=36"
set -gx EXA_COLORS "da=3;35"
