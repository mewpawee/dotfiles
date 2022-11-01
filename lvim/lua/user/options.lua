local options = {
    showtabline = 4, -- always show tabs
    tabstop =4
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
