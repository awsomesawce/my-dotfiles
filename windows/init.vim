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
Plug 'preservim/nerdtree', {'branch': 'master'}
call plug#end()
