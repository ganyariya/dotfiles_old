" ------------------------------
" Dashboard :Dashboard
" ------------------------------
let g:dashboard_default_executive ='fzf'
let g:indentLine_fileTypeExclude = ['dashboard']
nnoremap <silent> <Leader>fd :Dashboard<CR>
nnoremap <silent> <Leader>fss :<C-u>SessionSave<CR>
nnoremap <silent> <Leader>fsl :<C-u>SessionLoad<CR>

