" ------------------------------
" init.vim
" ------------------------------
let mapleader="\<Space>"

" ------------------------------
" Read Plugs
" ------------------------------
 source ~/.config/nvim/config/plug_list.vim

" ------------------------------
" Read Config
" ------------------------------
let vim_files = split(glob("~/.config/nvim/config/" . "*.vim"))
for file in vim_files
    execute 'source' file
endfor



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


