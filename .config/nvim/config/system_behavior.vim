" ------------------------------
" indent tab
" ------------------------------
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

" ------------------------------
" backup
" ------------------------------
set nobackup
set nowritebackup
set noswapfile

" ------------------------------
" clipboard
" ------------------------------
set clipboard=unnamed

" ------------------------------
" editor
" ------------------------------
syntax enable
set hidden
set title
set number
set relativenumber
set showmatch matchtime=1
set display=lastline
set guioptions+=a
set cursorline
set ruler
set splitright
set laststatus=0
hi Comment ctermfg=3

" ------------------------------
" search
" ------------------------------
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch

" ------------------------------
" system
" ------------------------------
set encoding=UTF-8
set laststatus=1
set autoread
set mouse=a
set noerrorbells
set history=10000
set updatetime=300
set shortmess+=c

" ------------------------------
" Previous Cursor
" ------------------------------
augroup restor-cursor
    autocmd!
    autocmd BufReadPost *
                \ if line("'\"") >= 1 && line("'\"") <= line("$")
                \ |   exe "normal! g`\""
                \ | endif
augroup END

