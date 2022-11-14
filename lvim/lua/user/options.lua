local options = {
    showtabline = 2, -- always show tab names on the top
    expandtab = true, -- convert tabs to spaces
    shiftwidth = 4, -- the number of spaces inserted for each indentation
    tabstop = 4, -- insert 2 spaces for a tab
    cursorline = true, -- highlight the current line
    number = true, -- set numbered lines
    relativenumber = true, --set relatives numbered lines
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
