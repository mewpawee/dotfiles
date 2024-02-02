if true then
  return {
    -- add catppuccin
    {
      "catppuccin/nvim",
      -- priority = 1000,
      -- config = function()
      --   require("catppuccin").setup({
      --     -- configurations
      --     flavour = "frappe",
      --   })
      -- end,
    },

    -- Configure LazyVim to load catppuccin
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin-frappe",
      },
    },
  }
end
