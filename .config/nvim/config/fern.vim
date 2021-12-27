" ------------------------------
" Fern & Nerd - File Manager
" https://hiroyukim.hatenablog.com/entry/2020/01/28/150352
" ------------------------------
"
nnoremap <Leader>z<Leader> :Fern . -reveal=% -drawer -toggle -width=40<CR>
let g:fern#renderer = 'nerdfont'
let g:fern#default_hidden = 1

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

