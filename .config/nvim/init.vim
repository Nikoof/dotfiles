set exrc	" Run per-project rc files
set hidden
set noerrorbells

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set nohlsearch
set incsearch

set number
set relativenumber
set signcolumn=yes
set nowrap
set guicursor=
set scrolloff=8

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

call plug#begin('~/.vim/plugged')
    Plug 'folke/tokyonight.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'mbbill/undotree'
call plug#end()

colorscheme tokyonight
highlight Normal guibg=none

" nnoremap = n(ormal mode) no re(cursive) e(xecution) map
let mapleader = " "
nnoremap <leader>ps
