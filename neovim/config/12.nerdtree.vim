" 关闭NERDTree快捷键
map <leader>t :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp','\.tmp','\.DS_Store']
" 显示书签列表
let NERDTreeShowBookmarks=1

" close vim if only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" nerdtree
" autocmd vimenter * NERDTree " start nerdtree automatically when vim starts up
nmap ,n :NERDTreeFind<CR>
map ,m :NERDTreeToggle<CR>


map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
" nnoremap <C-S-tab> :tabprevious<CR>
" nnoremap <C-tab> :tabnext<CR>
" nnoremap <C-t> :tabnew<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab> <Esc>:tabnext<CR>i
" inoremap <C-t> <Esc>:tabnew<CR>
" inoremap <C-S-w> <Esc>:tabclose<CR>