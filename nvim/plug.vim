" Plugins
call plug#begin()
Plug '~/.fzf'
" Plug 'scrooloose/nerdtree'                          "treetab
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}   "fuzzy search
Plug 'neoclide/coc.nvim', {'branch': 'release'}     "auto complete
Plug 'sheerun/vim-polyglot'                         "Syntax highlight
Plug 'sainnhe/sonokai'                              "Theme
Plug 'luochen1990/rainbow'                          "Colorlize Parenthesis
Plug 'tpope/vim-commentary'                         "Toggle comment
Plug 'lukas-reineke/indent-blankline.nvim'          "Matching Indent Line
Plug 'kyazdani42/nvim-web-devicons'                 " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'klen/nvim-test'
Plug 'wsdjeg/vim-pact'                              "Pact language syntax
Plug 'nvim-lua/plenary.nvim'                        "Telescope
Plug 'nvim-telescope/telescope.nvim'                "Telescope
Plug 'micmine/jumpwire.nvim'                        "Jumpwire
call plug#end()

" Coc extensions
let g:coc_global_extensions = [
    \ 'coc-elixir',
    \ 'coc-go',
    \ 'coc-json',
    \ 'coc-marketplace',
    \ 'coc-pyright',
    \ 'coc-yaml',
    \ 'coc-vetur',
    \ 'coc-solidity',
    \ ]

lua <<EOF
  require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      adaptive_size = true,
      mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
      },
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })
EOF

