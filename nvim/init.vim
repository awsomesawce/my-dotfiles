"" My nvim init.vim file for Arch Linux
set shiftwidth=4
set ignorecase
set background=dark
set encoding=utf-8
""colorscheme desert
colorscheme molokai
""colorscheme peachpuff
call plug#begin('~/.vim/plugged')
""" Disabled coc.nvim because it was slowing down too much.
"""""" IMPORTANT: Don't use another language client.
"""""" ALE does that already!
"""""" You just need a completion engine and some language servers.
"""""" REMOVED Coc.nvim!
"""""""""""""""""""""""""""""""""""""""""""""""
""" When enabling Coc.nvim, make sure to source 
""" The coc_config.vim file below
""Plug 'neoclide/coc.nvim', {'branch': 'release'}
""Plug 'autozimu/LanguageClient-neovim', {
""    \ 'branch': 'next',
""    \ 'do': 'bash install.sh',
""    \ }
Plug 'junegunn/fzf'
Plug 'https://github.com/plasticboy/vim-markdown/'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'mileszs/ack.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'https://github.com/deoplete-plugins/deoplete-zsh'
""Plug 'https://github.com/junegunn/vim-github-dashboard.git'
call plug#end()
""let g:deoplete#enable_at_startup = 1
"" Source this config when using Coc.
"" When turning off Coc, Comment this out!
""source ~/.config/nvim/coc_config.vim
"" Use :PlugInstall to initiate the installation of the plugins.
"" Use :CoCInstall to initiate installation of coc-nvim language servers.

" Copied from Coc config
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
"" End copy from coc config
