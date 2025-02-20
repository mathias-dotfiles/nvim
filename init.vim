set number  " Enable line numbers
set relativenumber " Enable relative line numbers
set tabstop=4 " Number of spaces a tab represents
set softtabstop=4
set shiftwidth=4 " Number of spaces for each indentation
set expandtab  " Convert tabs to spaces
set smartindent " Automatically indent new lines
set wrap! " Disable line wrapping
set cursorline " Highlight the current line
set termguicolors " Enable 24-bit RGB colors
set mouse=a " enable mouse click
set pastetoggle=

" Syntax highlighting and filetype plugins
syntax enable
filetype plugin indent on

" Leader key
let mapleader=" " 
nnoremap <Leader>w :w<CR>

lua require('init')


