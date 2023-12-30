if true then
  return {
    -- add catppuccin
    {
      "catppuccin/nvim",
      config = function()
        require("catppuccin").setup({
          -- configurations
          flavour = "frappe",
        })
      end,
    },

    -- Configure LazyVim to load catppuccin
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin",
      },
    },
  }
end
