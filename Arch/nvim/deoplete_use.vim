"" This is the basic install script for deoplete completion engine.

if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
        Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	    Plug 'roxma/vim-hug-neovim-rpc'
	endif
	let g:deoplete#enable_at_startup = 1
