-- ordinary Neovim

-- Enable vscode plugin
if vim.env.VSCODE then
  vim.g.vscode = true
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
end
