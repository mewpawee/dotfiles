reload "user.options" -- vim config
reload "user.keymaps" -- keymaps
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight-storm"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.treesitter.highlight.enable = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "typescript",
  "tsx",
  "json",
  "toml",
  "lua",
  "python",
  "css",
  "rust",
  "java",
  "yaml",
  -- "solidity",
  "html",
  "vue",
  "haskell"
}


-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`


local util = require("lspconfig/util")
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "solidity" })
local solidity_opts = {
  cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
  filetypes = { 'solidity' },
  root_dir = util.find_git_ancestor,
  single_file_support = true,
}

require("lvim.lsp.manager").setup("solidity_ls", solidity_opts)


-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
--

-- Custom Formatter
local helpers = require("null-ls.helpers")
local FORMATTING = require("null-ls.methods").internal.FORMATTING
--solidity
-- require("null-ls").register({
--   --your custom sources go here
--   helpers.make_builtin({
--     name = "forge_fmt",
--     meta = {
--       url = "https://book.getfoundry.sh/reference/config/formatter",
--       description = "Formats Solidity source files.",
--     },
--     method = FORMATTING,
--     filetypes = { "solidity" },
--     generator_opts = {
--       command = "forge",
--       args = {
--         "fmt",
--         "$FILENAME",
--       },
--       to_stdin = false,
--       to_temp_file = true,
--     },
--     factory = helpers.formatter_factory,
--   })
-- })
-- rust-leptos
require("null-ls").register({
  --your custom sources go here
  helpers.make_builtin({
    name = "leptos_fmt",
    meta = {
      url = "https://book.getfoundry.sh/reference/config/formatter",
      description = "Formats Solidity source files.",
    },
    method = FORMATTING,
    filetypes = { "rust" },
    generator_opts = {
      command = "leptosfmt",
      args = {
        "$FILENAME"
      },
      to_stdin = false,
      to_temp_file = true,
    },
    factory = helpers.formatter_factory,
  })
})


-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black", filetypes = { "python" } },
  { command = "isort", filetypes = { "python" } },
  {
    command = "prettier",
    --   extra_args = { "--print-with", "100" },
    filetypes = {
      "typescript",
      "typescriptreact",
      "vue",
    },
  },
  {
    command = "prettier",
    --explicit-types=never
    extra_args = { "--explicit-types=never" },
    filetypes = {
      "solidity"
    },
  },
}

-- -- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "flake8", filetypes = { "python" } },
  {
    -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "shellcheck",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--severity", "warning" },
  },
  {
    command = "codespell",
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "javascript", "python" },
  },
  -- {
  --   command = "solhint", filetypes = { "solidity" }
  -- }
}

-- Additional Plugins
-- lvim.plugins = {
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
