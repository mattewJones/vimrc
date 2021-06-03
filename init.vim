"""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMRC
"""""""""""""""""""""""""""""""""""""""""""""""""""

set rnu
set nu
set mouse=a
set clipboard=unnamedplus
set ruler
set hlsearch
set incsearch 
set showmatch 

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" mouvement inter-registre facile
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" azerty remap
let mapleader = ","
nnoremap : .
nnoremap ; :

" plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
