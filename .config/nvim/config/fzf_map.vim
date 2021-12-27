" ------------------------------
" Fzf
" ------------------------------

"function FzfOmniFiles() abort
    "let is_git = system('git status')
    "if v:shell_error
        ":Files
    "else
        ":GFiles
    "endif
"endfunction
" nnoremap <Leader>p :call FzfOmniFiles()<CR>

nnoremap <Leader>g :GFiles<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>ff :Files<CR>

