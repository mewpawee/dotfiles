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
call plug#end()

