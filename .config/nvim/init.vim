" ------------------------------
" Good Article
" ------------------------------
" like vscode https://qiita.com/youichiro/items/b4748b3e96106d25c5bc
" like vscode https://blog.craftz.dog/building-vscode-like-environment-using-vim-and-tmux-47cf7d432001
"

" ------------------------------
" key syntax
" ------------------------------
let mapleader="\<Space>"

nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
vnoremap j gj
vnoremap k gk
nnoremap zu zz11<C-e>

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
set laststatus=0
hi Comment ctermfg=3


" ------------------------------
" Fern & Nerd - File Manager
" https://hiroyukim.hatenablog.com/entry/2020/01/28/150352
" ------------------------------
" space -> z -> space
nnoremap <Leader>z<Leader> :Fern . -reveal=% -drawer -toggle -width=40<CR>
let g:fern#renderer = 'nerdfont'
let g:fern#default_hidden = 1


" ------------------------------
" window
" ------------------------------
set splitright

let g:winresizer_start_key = 'sc'
nnoremap ss :split<Return><C-w>w
nnoremap sv :vsplit<Return><C-w>l

nnoremap sh <C-w>h
nnoremap sl <C-w>l
nnoremap sk <C-w>k
nnoremap sj <C-w>j

" ------------------------------
" Buffers
" ------------------------------
nnoremap sn :bn<CR>
nnoremap sp :bp<CR>
nnoremap sq :bdelete<CR>

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
" Airline
" ------------------------------
let g:airline_theme='codedark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#default#layout = [
            \ [ 'a', 'b', 'c' ],
            \ ['z']
            \ ]
let g:airline_section_c = '%t %M'
let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'
let g:airline#extensions#hunks#non_zero_only = 1

let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 0
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab


" ------------------------------
" git
" ------------------------------
nnoremap g[ :GitGutterPrevHunk<CR>
nnoremap g] :GitGutterNextHunk<CR>
nnoremap gh :GitGutterLineHighlightsToggle<CR>
nnoremap gp :GitGutterPreviewHunk<CR>
highlight GitGutterDelete ctermfg=red
set updatetime=500



" ------------------------------
" Plugins
" ------------------------------
call plug#begin()

" completion when tab key in insert mode
Plug 'ervandew/supertab'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'ghifarit53/tokyonight-vim'

" git diffusion
Plug 'airblade/vim-gitgutter'

" file manager https://qiita.com/youichiro/items/b4748b3e96106d25c5bc#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%84%E3%83%AA%E3%83%BC%E3%82%92%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'

" Easy Motion
" https://tombomemo.com/vim-easymotion-install-settings/
Plug 'easymotion/vim-easymotion'

" beautifule scroll
Plug 'yuttie/comfortable-motion.vim'

" easy comment out <leader>c<Space>
Plug 'preservim/nerdcommenter'

" async lint
Plug 'dense-analysis/ale'

" git操作 :G*
Plug 'tpope/vim-fugitive'

" calc use time when vim
Plug 'wakatime/vim-wakatime'

" https://qiita.com/psyashes/items/1e1716a59a0dc22ea204
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" color theme
Plug 'ghifarit53/tokyonight-vim'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" lsp symbols
Plug 'liuchengxu/vista.vim'

" format
" https://github.com/vim-autoformat/vim-autoformat
Plug 'Chiel92/vim-autoformat'

" run command asyncly :AsyncRun
Plug 'skywind3000/asyncrun.vim'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Size sc
Plug 'simeji/winresizer'

" Better %
Plug 'andymass/vim-matchup'

" Dashboard
Plug 'glepnir/dashboard-nvim'

call plug#end()

" ------------------------------
" Color Scheme
" ------------------------------
set termguicolors

let g:tokyonight_style = 'storm' " night or storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
" colorscheme codedark

" ------------------------------
" coc.nvim
" ------------------------------
source ~/.config/nvim/plugin-init-vim/coc.vim

" ------------------------------
" asyncrun.vim
" ------------------------------
augroup MyGroup
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

" ------------------------------
" Fern Icons Clor
" ------------------------------
augroup my-glyph-palette
    autocmd! *
    autocmd FileType fern call glyph_palette#apply()
    autocmd FileType nerdtree call glyph_palette#apply()
augroup END

" ------------------------------
" Fern Keymap
" ------------------------------
function! s:init_fern() abort
    nnoremap <buffer> s <Nop>
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

" ------------------------------
" Nvim-Treesitter
" ------------------------------
lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
    enable = true
    }
}
EOF


" ------------------------------
" Fzf
" ------------------------------
fun! FzfOmniFiles()
    let is_git = system('git status')
    if v:shell_error
        :Files
    else
        :GFiles
    endif
endfun
nnoremap <Leader>p :call FzfOmniFiles()<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>b :Buffers<CR>


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

" ------------------------------
" Dashboard :Dashboard
" ------------------------------
let g:dashboard_default_executive ='fzf'
let g:indentLine_fileTypeExclude = ['dashboard']
nnoremap <silent> <Leader>fd :Dashboard<CR>
nnoremap <silent> <Leader>fss :<C-u>SessionSave<CR>
nnoremap <silent> <Leader>fsl :<C-u>SessionLoad<CR>

