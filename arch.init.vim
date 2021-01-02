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
call plug#end()
"" Use :PlugInstall to initiate the installation of the plugins.
"" Use :CoCInstall to initiate installation of coc-nvim language servers.
