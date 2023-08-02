source ~/.cache/starship/init.nu
source ~/.zoxide.nu

let-env PATH = ($env.PATH | split row (char esep) | prepend '/opt/homebrew/bin')
let-env PATH = ($env.PATH | split row (char esep) | prepend '/Users/mewpawee/.local/bin/')
let nu_path = ['/opt/homebrew/bin', '/Users/mewpawee/.local/bin/']
