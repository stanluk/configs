set shell=/bin/bash

" GENERAL CONFIGURATION
" enable loading plugins depending on file extension
syntax enable
filetype plugin indent on
set autoindent
set encoding=utf-8
set number
set tabstop=4
set cindent

" PLUGINS
set nocompatible
filetype off
call plug#begin()
" File management, fuzzy file searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" File tree
Plug 'scrooloose/nerdtree'
" LSP configuration
Plug 'neovim/nvim-lspconfig'
" Rust additional features/commands
Plug 'rust-lang/rust.vim'
" Addons LSP. Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/vim-vsnip'

call plug#end()
	
" LUA Config
lua require('nvim-cmp')

" HOTKEYS
" fzf plugin
" #searching for files
map <C-p> :Files<CR>
