""""""""""""""""""""""
" Settings(NeoVim)   "
""""""""""""""""""""""
set termguicolors               " Use "true color" in the terminal
set number                      " Show line numbers
set colorcolumn=81              " 設定超過80長度提示 :help colorcolumn

set tabstop=4                   " tab键的宽度
set softtabstop=4               " 统一缩进为4

" enable mouse support
set mouse=a               "  The mouse works just fine, thus enable it.
set mousemodel=popup


set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
"set guifont=Ricty:h14
set showtabline=2

" set transparency=15


" Plugins
" [fatih/molokai]
    "set t_Co=256               " 去掉这蛋疼的古代颜色支持方案
    colorscheme molokai
    let g:rehash256 = 1
    let g:molokai_original = 1