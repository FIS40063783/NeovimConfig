" Plugins to Install
call plug#begin(stdpath('data') . '/plugged')
Plug 'neovim/nvim-lspconfig'	" For finding errors
Plug 'hrsh7th/cmp-nvim-lsp'		" For Autocomplete LSP integration
Plug 'hrsh7th/nvim-cmp'			" For autocomplete
Plug 'windwp/nvim-autopairs'	" Autpairs
Plug 'honza/vim-snippets'		" snippets for ultisnips to use
Plug 'SirVer/UltiSnips'			" For code snippets
Plug 'quangnguyen30192/cmp-nvim-ultisnips'	" Integration with cmp
Plug 'tpope/vim-fugitive'		" For git integration
Plug 'nvim-lua/plenary.nvim'	" Dependency for telescope
Plug 'nvim-telescope/telescope.nvim'	" Finder
Plug 'morhetz/gruvbox'			" Objectively the best theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'			" LaTeX integration
call plug#end()

" Theme configuration
let g:airline_powerline_fonts = 1
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
highlight ColorColumn ctermbg=red guibg=#cc241d

" Include the lua files for LSP and autocomplete config
lua require("auto_complete_config")
lua require("native_lsp_setup")

" Snippets config
let g:UltiSnipsExpandTrigger="<S-Tab>"
let g:UltiSnipsEditSplit="vertical"
