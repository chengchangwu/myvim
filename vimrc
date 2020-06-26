set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set nocompatible
set ruler
set showcmd
set number
set cursorline
set wildmenu        " visual autocomplete for command menu
set wildmode=list:longest,full
set showmatch       " highlight matching [{()}]
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set path+=**        " search subfolder with find
colorscheme codedark
syntax on
filetype plugin indent on
let mapleader=" "
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>eb :vsp ~/.bashrc<CR>
