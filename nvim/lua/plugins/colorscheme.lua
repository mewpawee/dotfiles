if true then
  return {
    -- add catppuccin
    {
      "catppuccin",
      opts = {
        transparent_background = true, -- toggle transparent background
      },
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
