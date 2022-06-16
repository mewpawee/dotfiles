" disable compatibility to old-time vi
set nocompatible

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

" Nvimtree
let g:nvim_tree_auto_open = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file

let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }
:lua require 'nvim-tree'.setup()

" Theme
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai

" Activation rainbow parenthesis 
let g:rainbow_active = 1

" Highlight the row number
hi CursorLineNR cterm=bold ctermbg=8
augroup CLNRSet
   autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END
hi MatchParen cterm=bold ctermfg=125 ctermbg=131 

" Configuration
syntax on
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=-1          " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=0            " width for autoindents
set shiftround              " round indentation

set expandtab               " converts tabs to white space

set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set spell                   " enable spell check (may need to download language package)
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard

" Cursor
set cursorline              " highlight current cursorline
set cursorcolumn		     " Show the column line for the current cursor
" hi CursorColumn ctermbg=7	 " Set the column line color
set ruler                   " Show the line and column: 
set ttyfast                 " Speed up scrolling in Vim


" set cc=80                  " set an 80 column border for good coding style
" set mouse=v                 " middle-click paste with 
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
"

" Timeout
set timeoutlen=1000
set ttimeoutlen=0

" Key Binding
" Tabs management mapping
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>

nnoremap <C-b> :NvimTreeToggle<CR>
nnoremap <C-h> gT
nnoremap <C-l> gt
