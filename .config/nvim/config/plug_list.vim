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

" file manager
" https://qiita.com/youichiro/items/b4748b3e96106d25c5bc#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%84%E3%83%AA%E3%83%BC%E3%82%92%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B
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
