syntax on	" Enable syntax highlighting
filetype plugin indent on

set nocompatible
set noerrorbells
set hidden

" Ensure that file encoding is always UTF-8
set encoding=utf-8
set fileencoding=utf-8

" Basic GUI settings
set termguicolors
set guicursor=i:block
set number
set cursorline
set noshowmode
set pumheight=10
set cc=79

" Text format settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
set smartindent
set autoindent
set smarttab
set nowrap

" Other useful settings
set iskeyword+=-
set formatoptions-=cro
set clipboard=unnamedplus

" Start integrated terminal in insert
autocmd TermOpen * setlocal nonumber
autocmd TermOpen * startinsert
