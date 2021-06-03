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
set encoding=utf8


" tabulations
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab


" exécution non-graphique des macros (meilleure perf)
set lazyredraw 

"""""""""""maps"""""""""""""""""""""""""""""""""


nnoremap <leader>n :set nu! <cr>

" mouvement inter-fenêtres facile
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" mouvement inter-registre facile
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" azerty remap
let mapleader = ","
nnoremap ! .

"""""""""""plugins"""""""""""""""""""""""""""""""""


" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'SirVer/ultisnips'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/goyo.vim'
call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
map <leader>z :Goyo<cr>
