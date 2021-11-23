if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

#EXA Colors
set -gx LS_COLORS "di=36"
set -gx EXA_COLORS "da=3;35"
