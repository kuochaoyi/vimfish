" deoplete.vim contains vim settings relevant to the deoplete autocompletion
" plugin

" deoplete options
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" disable autocomplete by default
"let b:deoplete_disable_auto_complete=1

" call deoplete#custom#source('LanguageClient',
"             \ 'min_pattern_length',
"             \ 2)

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" Disable the candidates in Comment/String syntaxes.
" call deoplete#custom#source('_',
"             \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" call deoplete#custom#option('sources', {
            " \ 'python': ['LanguageClient'],
            " \ 'python3': ['LanguageClient'],
            " \ 'cpp': ['LanguageClient'],
            " \ 'c': ['LanguageClient'],
            " \ 'rust': ['LanguageClient'],
            " \ 'vim': ['vim'],
            " \})

" ignored sources
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer', 'around']

" [zchee/deoplete-go]
" neocomplete like
"set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

" Path to python interpreter for neovim
let g:python3_host_prog  = '/usr/local/bin/python3'
" Skip the check of neovim module
let g:python3_host_skip_check = 1

" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
"let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
"let g:deoplete#sources#go#gocode_binary = '/Users/kuochaoyi/go/bin/gocode'
let g:deoplete#sources#go#gocode_binary = ''
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

