let g:deoplete#enable_at_startup = 1

" Preview視窗
" 自動關閉
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" 新建立的視窗位於當前視窗下面
set splitbelow
" 設定為使用 Tab 鍵在自動補全的列表跳轉
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"