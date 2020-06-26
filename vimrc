set tabstop=4
set softtabstop=4
set expandtab
set nocompatible
set incsearch
set hlsearch
set ruler
set showcmd
set showmatch
set number
set cursorline
set wildmenu
colorscheme codedark
syntax on
filetype indent on
let mapleader=" "
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>eb :vsp ~/.bashrc<CR>

" --------------------------------------------------------------
" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
call plug#end()

" --------------------------------------------------------------
" lsp support

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rust-analyzer'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
