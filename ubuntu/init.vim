"" Ubuntu nvim experimental config
"" Date 4/8
"" TODO: clean this up.

set runtimepath^=~/.vim runtimepath+=~/.vim/after
""set runtimepath+=/usr/share/vim-youcompleteme
let &packpath = &runtimepath
source ~/.vimrc
if !has('nvim')
	set ttymouse=xterm2
endif
set nobackup
set omnifunc
set shiftwidth=4
set autochdir

