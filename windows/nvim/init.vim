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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/plasticboy/vim-markdown/'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'mileszs/ack.vim'
source deoplete_enable.vim
"" Begin Windows only plugin list
"" These plugins are already installed by the Arch Linux package manager.
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree', {'branch': 'master'}
Plug 'vim-airline/vim-airline', {'branch': 'master'}
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/PProvost/vim-ps1'
Plug 'https://github.com/vifm/vifm.vim'
"""" Install next plugin as an alternative to coc.nvim
""Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'make release'}.
"" End Windows only plugin list.
call plug#end()

"" Use :PlugInstall to initiate the installation of the plugins.
"" Use :CoCInstall to initiate installation of coc-nvim language servers.

"" Begin coc config
"" Taken from https://github.com/neoclide/coc.nvim
"" Remove or unmap <tab> before using this config.  I uninstalled vim-supertab

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

"" Source extra init files

"" Source coc_config.vim
source coc_config.vim
