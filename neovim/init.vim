" ~/.config/nvim/init.vim
" $curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" For example, we just use `~/.cache/dein` as installation directory
" $sh ./installer.sh ~/.cache/dein
" $
" $touch dein/toml/dein_lazy.toml


"dein Scripts-----------------------------
if &compatible
  set nocompatible                " Enables us Vim specific features 
endif

" Required:
set runtimepath+=/Users/kuochaoyi/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/kuochaoyi/.cache/dein')

  " XDG base direcory compartible
  let g:dein#cache_directory = '/Users/kuochaoyi/.cache/dein'

  " dein begin
  call dein#begin('/Users/kuochaoyi/.cache/dein')

  " Let dein manage dein
  " Required:
  " call dein#add($HOME . '/.cache/dein/repos/github.com/Shougo/dein.vim') --> dein.toml

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " TOML
  let s:toml_dir  = '~/.config/nvim/dein/toml' 
  let s:toml      = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

  " TOML 
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
 

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


""""""""""""""""""""""
" Settings(NeoVim)   "
""""""""""""""""""""""
set termguicolors               " Use "true color" in the terminal
set number                      " Show line numbers
set colorcolumn=81              " 設定超過80長度提示 :help colorcolumn

set tabstop=4                   " tab键的宽度
set softtabstop=4               " 统一缩进为4

set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set guifont=Ricty:h14
set showtabline=2

" set transparency=15

" =====================================
" key map
" =====================================

" use ;; for escape
" http://vim.wikia.com/wiki/Avoid_the_escape_key
inoremap ;; <Esc>
map! ;; <Esc> " map ;; to Esc
"map! jj <Esc> " map jj to Esc