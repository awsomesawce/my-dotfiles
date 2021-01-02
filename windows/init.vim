"" Windows part
set runtimepath^=~/vimfiles runtimepath+=~/vimfiles/after
let &packpath = &runtimepath
source ~/_vimrc

"" My nvim init.vim file
set shiftwidth=4
set ignorecase
set background=dark
"" Hopefully this works
""colorscheme desert
""colorscheme molokai
colorscheme peachpuff
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"" Begin Windows only plugin list
"" These plugins are already installed by the Linux package manager.
Plug 'preservim/nerdtree', {'branch': 'master'}
Plug 'vim-airline/vim-airline', {'branch': 'master'}
Plug 'vim-airline/vim-airline-themes'
"" End Windows only plugin list.
call plug#end()
