source ~/.cache/starship/init.nu
source ~/.zoxide.nu

$env.PATH = ($env.PATH | split row (char esep) | prepend '/opt/homebrew/bin')
$env.PATH = ($env.PATH | split row (char esep) | prepend '/Users/mewpawee/.local/bin/')
let nu_path = ['/opt/homebrew/bin', '/Users/mewpawee/.local/bin/']
