" language_client.vim contains vim settings specific to the language
" client plugin

set runtimepath+=~/.cache/dein/repos/github.com/autozimu/LanguageClient-neovim

set hidden                      " Buffer should still exist if window is closed

" language server commands
    " golsp
        " $go get -u golang.org/x/tools/cmd/golsp
        " cd /go/src/golang.org/x/tools/cmd/golsp
        let g:LanguageClient_serverCommands = {
            \ 'go': ['golsp']
            \ }

let g:LanguageClient_loadSettings = 1
let g:LanguageClient_autoStart = 1
" let g:LanguageClient_rootMarkers = {
        "    \ 'cpp': ['compile_commands.json', 'build'],
        "     \ 'c': ['compile_commands.json', 'build'],
        "     \ 'haskell': ['*.cabal', 'stack.yaml'],
        "     \ }

set omnifunc=LanguageClient#complete
set formatexpr=LanguageClient_textDocument_rangeFormatting()

" let g:LanguageClient_settingsPath = '/Users/aenayet/.config/nvim/settings.json'

" keybindings for language client
"nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_codeAction()<CR>

" Always draw sign column. Prevent buffer moving when adding/deleting sign.
set signcolumn=yes

" let g:LanguageClient_loggingLevel = 'INFO'
" let g:LanguageClient_loggingFile =  expand('~/.local/share/nvim/LanguageClient.log')
" let g:LanguageClient_serverStderr = expand('~/.local/share/nvim/LanguageServer.log')