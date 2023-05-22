-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["ge"] = "G"                        -- jump to line end
lvim.keys.normal_mode["gn"] = ":BufferLineCycleNext<CR>" -- next tab
lvim.keys.normal_mode["gp"] = ":BufferLineCyclePrev<CR>" -- previouse tab
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>" -- save current tab
lvim.keys.normal_mode["<C-w>q"] = ":bd<cr>"              -- close current tab(buffer)
lvim.keys.normal_mode["<C-w>v"] = ":vs<cr>"              -- vertical split
lvim.keys.normal_mode["<C-w>s"] = ":sp<cr>"              -- horizontal split
