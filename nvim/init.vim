set nocompatible            " disable compatibility to old-time vi
"Plugins
call plug#begin()
Plug '~/.fzf'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'scrooloose/nerdtree'                        "treetab
Plug 'junegunn/fzf', {'do': { -> fzf#install() }} "fuzzy search
Plug 'neoclide/coc.nvim', {'branch': 'release'}   "auto complete
Plug 'sheerun/vim-polyglot'                       "Syntax highlight
Plug 'sainnhe/sonokai'                            "Theme
Plug 'luochen1990/rainbow'                        "Colorlize Parenthesis
Plug 'tpope/vim-commentary'                       "Toggle comment
Plug 'lukas-reineke/indent-blankline.nvim'        "Matching Indent Line
call plug#end()


" Theme
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai

" Activation rainbow parenthesis 
let g:rainbow_active = 1

"highlight the row
hi CursorLineNR cterm=bold ctermbg=8
augroup CLNRSet
   autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END
hi MatchParen cterm=bold ctermfg=125 ctermbg=131 

"let g:indent_blankline_use_treesitter = v:true
" let g:indent_blankline_show_first_indent_level = v:false
" let g:indent_blankline_show_trailing_blankline_indent = v:false
let g:indent_blankline_show_current_context = v:true
" let g:indent_blankline_context_patterns = ['class', 'function', 'method', '^if', '^while', '^for', '^object', '^table', 'block', 'arguments']

syntax on
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=-1          " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=0            " width for autoindents
set shiftround              " round indentation

set expandtab               " converts tabs to white space


set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on

"Cursor
set cursorline              " highlight current cursorline
set cursorcolumn		     " Show the column line for the current cursor
"hi CursorColumn ctermbg=7	 " Set the column line color
set ruler                   " Show the line and column: 
set ttyfast                 " Speed up scrolling in Vim


"set cc=80                  " set an 80 column border for good coding style
"set mouse=v                 " middle-click paste with 
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
"


" Binding
nnoremap <C-b> :NERDTreeToggle<CR>
