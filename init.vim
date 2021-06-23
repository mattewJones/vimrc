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


" tabulations (j'utilise des tabs)
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" affichage des whitespaces
set list
set listchars=tab:┊\ ,trail:␠,nbsp:⎵

" exécution non-graphique des macros (meilleure perf)
set lazyredraw


"""""""""""maps"""""""""""""""""""""""""""""""""

let mapleader = ","


nnoremap <Leader>n :set nu! <cr>

"vim anéantit les hérétiques de l'indentation (changer la taille des tabs pour
"correspondre au nombre d'espaces hérétiques)
nnoremap <Leader>r :%retab!<cr>

" azerty remap
nnoremap ; .

" mouvement inter-fenêtres facile
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" mouvement inter-registre facile
map <Leader>l :bnext<cr>
map <Leader>h :bprevious<cr>


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
		colors default
		let g:airline_theme='solarized'
	Plug 'SirVer/ultisnips'
		let g:UltiSnipsExpandTrigger = '<tab>'
		let g:UltiSnipsJumpForwardTrigger = '<tab>'
		let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
	Plug 'tpope/vim-surround'
	Plug 'vim-pandoc/vim-pandoc'
	
call plug#end()



" remaps spécifiques

