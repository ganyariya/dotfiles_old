" ------------------------------
" Nvim-Treesitter
" ------------------------------

lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = {},
    sync_install = false,
    highlight = {
        enable = true
    }
}
EOF

