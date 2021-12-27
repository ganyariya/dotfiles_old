" ------------------------------
" Plugins
" ------------------------------
call plug#begin()

" completion when tab key in insert mode
Plug 'ervandew/supertab', {'on': []}

" airline
" Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline', {'on': []}
Plug 'tomasiser/vim-code-dark'

" vim-theme
Plug 'ghifarit53/tokyonight-vim'

" git diffusion
Plug 'airblade/vim-gitgutter', {'on': []}

" file manager
" https://qiita.com/youichiro/items/b4748b3e96106d25c5bc#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%84%E3%83%AA%E3%83%BC%E3%82%92%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B
Plug 'lambdalisue/fern.vim', {'on': []}
Plug 'lambdalisue/fern-git-status.vim', {'on': []}
Plug 'lambdalisue/nerdfont.vim', {'on': []}
Plug 'lambdalisue/fern-renderer-nerdfont.vim', {'on': []}
Plug 'lambdalisue/glyph-palette.vim', {'on': []}

" Easy Motion
" https://tombomemo.com/vim-easymotion-install-settings/
Plug 'easymotion/vim-easymotion', {'on': []}

" beautifule scroll
Plug 'yuttie/comfortable-motion.vim', {'on': []}

" easy comment out <leader>c<Space>
Plug 'preservim/nerdcommenter', {'on': []}

" async lint
Plug 'dense-analysis/ale', {'on': []}

" git操作 :G*
Plug 'tpope/vim-fugitive', {'on': []}

" calc use time when vim
Plug 'wakatime/vim-wakatime', {'on': []}

" https://qiita.com/psyashes/items/1e1716a59a0dc22ea204
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': []}

" lsp symbols
Plug 'liuchengxu/vista.vim'

" format
" https://github.com/vim-autoformat/vim-autoformat
Plug 'Chiel92/vim-autoformat', {'on': []}

" run command asyncly :AsyncRun
Plug 'skywind3000/asyncrun.vim', {'on': []}

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }, 'on': []}
Plug 'junegunn/fzf.vim', {'on': []}

" Size sc
Plug 'simeji/winresizer', {'on': []}

" Better %
Plug 'andymass/vim-matchup', {'on': []}

" Dashboard
Plug 'glepnir/dashboard-nvim'

call plug#end()


" ------------------------------
" Lazy Load
" ------------------------------
function! s:LazyLoadPlugs(timer) abort
  " save current position by marking Z because plug#load reloads current buffer
  normal! mZ
  call plug#load(
        \   'supertab',
        \   'vim-gitgutter',
        \   'fern.vim',
        \   'fern-git-status.vim',
        \   'nerdfont.vim',
        \   'fern-renderer-nerdfont.vim',
        \   'glyph-palette.vim',
        \   'vim-easymotion',
        \   'comfortable-motion.vim',
        \   'nerdcommenter',
        \   'ale',
        \   'vim-fugitive',
        \   'vim-wakatime',
        \   'coc.nvim',
        \   'vim-autoformat',
        \   'asyncrun.vim',
        \   'winresizer',
        \   'vim-matchup',
        \ )
  call plug#load(
        \   'fzf',
        \   'fzf.vim',
        \   'vim-airline',
        \ )
  normal! g`Z
  delmarks Z
endfunction

call timer_start(20, function("s:LazyLoadPlugs"))
