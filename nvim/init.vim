set nocompatible            " disable compatibility to old-time vi
"Plugins
call plug#begin()
Plug 'scrooloose/nerdtree'                        "treetab
Plug 'junegunn/fzf', {'do': { -> fzf#install() }} "fuzzy search
Plug 'neoclide/coc.nvim', {'branch': 'release'}   "auto complete
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'sheerun/vim-polyglot'
call plug#end()

"colorscheme onenord

hi CursorLineNR cterm=bold ctermbg=8
augroup CLNRSet
    autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END

syntax on
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
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
hi CursorColumn ctermbg=8	 " Set the column line color
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
