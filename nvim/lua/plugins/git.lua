if true then
  return {
    -- git sign
    {
      "lewis6991/gitsigns.nvim",
      event = "LazyFile",
      opts = {
        current_line_blame = true,
      },
    },
  }
end
