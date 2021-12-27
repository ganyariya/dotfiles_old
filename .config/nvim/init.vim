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

