" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

let g:skip_defaults_vim = 1

if has("syntax")
  syntax on
endif

if has("gui")

endif

set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

filetype plugin indent on

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" More customizations 2/18/2021, 2/27/2021
set wildmenu
set shellslash
set shell=bash
set autochdir
colorscheme desert
" Install vim-plug
"Plug 'https://github.com/plasticboy/vim-markdown/'

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

" fzf is a fuzzy finder for vim
source /usr/share/doc/fzf/examples/fzf.vim
