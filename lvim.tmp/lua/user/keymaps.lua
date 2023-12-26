-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["ge"] = "G"                        -- jump to the end of file
lvim.keys.normal_mode["gn"] = ":BufferLineCycleNext<CR>" -- next tab
lvim.keys.normal_mode["gp"] = ":BufferLineCyclePrev<CR>" -- previouse tab
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>" -- save current tab

-- File
lvim.keys.normal_mode["U"] = "<C-r>" -- redo

-- Buffer
lvim.keys.normal_mode["<C-w>q"] = ":bd<cr>" -- close current tab(buffer)
lvim.keys.normal_mode["<C-w>v"] = ":vs<cr>" -- vertical split
lvim.keys.normal_mode["<C-w>s"] = ":sp<cr>" -- horizontal split


lvim.keys.normal_mode["H"] = ":BufferLineMovePrev<cr>" -- move buffer to the left
lvim.keys.normal_mode["L"] = ":BufferLineMoveNext<cr>" -- move buffer to the right


-- Tab
lvim.keys.normal_mode["tt"] = ":tabnew<cr>"      -- horizontal split
lvim.keys.normal_mode["tn"] = ":tabNext<cr>"     -- horizontal split
lvim.keys.normal_mode["tp"] = ":tabprevious<cr>" -- horizontal split
