"" My nvim init.vim file for Arch Linux
set shiftwidth=4
filetype plugin on
set omnifunc=ale#completion#OmniFunc
""set omnifunc=syntaxcomplete#Complete
set makeprg=shellcheck\ -f\ gcc\ % "" Use shellcheck for shell scripts when using make inside nvim
set wildmenu
set termguicolors
set ignorecase
set background=dark
set encoding=utf-8
colorscheme desert
set omnifunc=ale#completion#OmniFunc
""colorscheme molokai
""colorscheme seti
""colorscheme peachpuff "" great for daytime!
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
Plug 'vim-latex/vim-latex'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'junegunn/fzf'
Plug 'https://github.com/plasticboy/vim-markdown/'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'mileszs/ack.vim'
Plug 'vifm/vifm.vim'
Plug 'mattn/emmet-vim'
"" Removed deoplete 1/22/2021
""Plug 'Shougo/deoplete.nvim'
""Plug 'https://github.com/deoplete-plugins/deoplete-zsh'
"" End Deoplete
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
""set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
"" End copy from coc config
