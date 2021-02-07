"" My nvim init.vim file for Arch Linux
set shiftwidth=4
""filetype plugin on "" Not needed because it's already set.
set omnifunc=ale#completion#OmniFunc
""set omnifunc=syntaxcomplete#Complete
set makeprg=shellcheck\ -f\ gcc\ % "" Use shellcheck for shell scripts when using make inside nvim
set wildmenu
set termguicolors
set ignorecase
set background=dark
set encoding=utf-8
"" Colorscheme options: molokai, seti, peachpuff, desert, default, darkblue
colorscheme desert
"" Vim-Markdown options
let g:vim_markdown_folding_disabled = 1
"" ALE options TODO: test this out!
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
"" Sun 07 Feb 2021 04:22:21 PM EST
"" Custom keybinds
noremap <F2> a<C-R>=strftime("%c")<CR><Esc>
" ^ inserts the date and time into the buffer
"
" INFO: Use :let @/ = "the" to put a string of text into the "/" buffer.

"" From awesome.vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
""syntax enable "" already enabled

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry


" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac
" Add a bit extra margin to the left
""set foldcolumn=1

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
""set lazyredraw 

" For regular expressions turn magic on
""set magic
"" End from awesome.vimrc
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
""Plug 'dbeniamine/cheat.sh-vim' "" removed because it slowed down nvim
Plug 'https://github.com/fatih/vim-go'
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
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
"" End copy from coc config
