-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>" -- save current tab
lvim.keys.normal_mode["<C-d>"] = ":bd<cr>" -- close current tab(buffer)
lvim.keys.normal_mode["|"] = ":vsplit<cr>"  -- vertical split
lvim.keys.normal_mode["_"] = ":split<cr>"   -- horizontal split
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>" -- next tab
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>" -- previouse tab
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )
