vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#FF77BB', bold = true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#708090' })
  end,
})
