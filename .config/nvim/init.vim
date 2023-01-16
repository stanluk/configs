set shell=/bin/bash

" =============================================================================
" GENERAL CONFIGURATION
" =============================================================================
" enable loading plugins depending on file extension
syntax enable
filetype plugin indent on
set autoindent
set encoding=utf-8
set number
set tabstop=4
set shiftwidth=4
set cindent
set list
set expandtab

" =============================================================================
" PLUGINS
" =============================================================================
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
Plug 'hrsh7th/vim-vsnip-integ'
" comments
Plug 'tpope/vim-commentary'
" Git support
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
" bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" grep support
Plug 'vim-scripts/grep.vim'
" go
"" Go Lang Bundle
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

call plug#end()
	
" =============================================================================
" LUA Config
" =============================================================================
lua require('nvim-cmp')

" =============================================================================
" HOTKEYS
" =============================================================================
" fzf plugin
" #searching for files
map <C-p> :Files<CR>
" -----------------------------------------------------------------------------
" vsnip plugin
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
