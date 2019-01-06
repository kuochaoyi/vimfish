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
	call dein#add('/Users/kuochaoyi/.cache/dein/repos/github.com/Shougo/dein.vim')

	" Add or remove your plugins here like this:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

	" UI/UX
    call dein#add('fatih/molokai')
	call dein#add('vim-airline/vim-airline')
	call dein#add('vim-airline/vim-airline-themes')
	call dein#add('scrooloose/nerdtree')

	" Linting
	"call dein#add('neomake/neomake')
	call dein#add('w0rp/ale') " Support for LCS

	call dein#add('Shougo/deoplete.nvim')
	" Golang
	" $go get -u github.com/mdempsky/gocode
	" call dein#add('zchee/deoplete-go', {'build': 'make'})
	call dein#add('fatih/vim-go')
	call dein#add('autozimu/LanguageClient-neovim', {
				\ 'rev': 'next',
				\ 'build': 'bash install.sh',
				\ })
	
	"call dein#add('Shougo/vimshell')
	"call dein#add('Shougo/neoinclude.vim')
	"call dein#add('Shougo/neco-vim')
	"call dein#add('Shougo/neoinclude.vim')
	"call dein#add('sheerun/vim-polyglot')
	"call dein#add('icymind/NeoSolarized')
	"call dein#add('tmhedberg/SimpylFold')
	"call dein#add('Konfekt/FastFold')
	"call dein#add('cloudhead/neovim-fuzzy')
	"call dein#add('neomutt/neomutt.vim')
	"call dein#add('junegunn/fzf')
	"call dein#add('alaric/neovim-visor')
	"call dein#add('christoomey/vim-tmux-navigator')


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