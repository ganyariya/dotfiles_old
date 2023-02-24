" ------------------------------
" key syntax
" ------------------------------
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
vnoremap j gj
vnoremap k gk
nnoremap zu zz11<C-e>

" ------------------------------
" key window
" ------------------------------

" window resize
let g:winresizer_start_key = 'sc' 

nnoremap ss :split<Return><C-w>w
nnoremap sv :vsplit<Return><C-w>l

nnoremap sh <C-w>h
nnoremap sl <C-w>l
nnoremap sk <C-w>k
nnoremap sj <C-w>j

" ------------------------------
" key buffers
" ------------------------------
nnoremap sn :bn<CR>
nnoremap sp :bp<CR>
nnoremap sq :bdelete<CR>

