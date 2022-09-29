if exists('g:vscode')
else
   " init autocmd
   autocmd!
   "set script encoding
   scriptencoding utf-8

   " Configuration
   set nocompatible
   set number                  " add line numbers
   syntax enable
   set encoding=utf-8
   set title
   set autoindent              " indent a new line the same amount as the line just typed
   set showmatch               " show matching 
   set ignorecase              " case insensitive 
   set hlsearch                " highlight search 
   set showcmd
   set cmdheight=1
   set laststatus=2
   set scrolloff=10
   set shell=fish
   set incsearch               " incremental search

   set expandtab               " converts tabs to white space

   set wildmode=longest,list   " get bash-like tab completions
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

   "indents
   filetype plugin indent on   " allow auto-indenting depending on file type
   set shiftwidth=2            " width for autoindents
   set tabstop=2               " number of columns occupied by a tab 
   set ai                      " Auto indent
   set si                      " Smart indent
   set nowrap                  " No Wrap lines
   set backspace=start,eol,indent
   set softtabstop=-1          " see multiple spaces as tabstops so <BS> does the right thing
   set shiftround              " round indentation

   " Turn off paste mode when leaving insert
   autocmd InsertLeave * set nopaste

   " set cc=80                  " set an 80 column border for good coding style
   " set mouse=v                 " middle-click paste with 
   " set noswapfile            " disable creating swap file
   " set backupdir=~/.cache/vim " Directory to store backup files.
   "

   " Import
   runtime ./plug.vim

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
endif
