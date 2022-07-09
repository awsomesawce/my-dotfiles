"" Carl's Ubuntu Neovim Config
"" DATE: 11/9/2021
set nocompatible
filetype plugin indent on
set shiftwidth=4 expandtab
set wildmenu
set background=dark
set incsearch
set ignorecase smartcase
colorscheme desert

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
" My additions begin
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
"" Added 11/9/2021
Plug 'https://github.com/PProvost/vim-ps1'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/plasticboy/vim-markdown/'
"" BEGIN Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-salve'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
""Plug 'Olical/conjure' Conjure requires at least neovim 0.5 to work.
Plug 'clojure-vim/clojure.vim'
"" END Clojure
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
""Plug 'dense-analysis/ale'
" My additions end

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
""Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
""Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-default branch
""Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
""Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
""Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()

"" BEGIN coc-config Ubuntu Linux 7/1/2022
"" Coc extensions installed:
"" 
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
"" END coc-config Ubuntu Linux 7/1/2022
