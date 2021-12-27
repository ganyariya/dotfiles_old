" ------------------------------
" Good Article
" ------------------------------
" like vscode https://qiita.com/youichiro/items/b4748b3e96106d25c5bc
" like vscode https://blog.craftz.dog/building-vscode-like-environment-using-vim-and-tmux-47cf7d432001

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
" Dashboard :Dashboard
" ------------------------------
let g:dashboard_default_executive ='fzf'
let g:indentLine_fileTypeExclude = ['dashboard']
nnoremap <silent> <Leader>fd :Dashboard<CR>
nnoremap <silent> <Leader>fss :<C-u>SessionSave<CR>
nnoremap <silent> <Leader>fsl :<C-u>SessionLoad<CR>

