-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
-- local opts = { noremap = true, silent = true }

-- Redo
keymap.set("n", "U", "<C-r>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save & Format
keymap.set("n", "<C-s>", ":w<Return>")

-- New tab
keymap.set("n", "te", ":tabedit<Return>")
