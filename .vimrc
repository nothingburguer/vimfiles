let mapleader = " "

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

let g:airline_theme = 'angr'
let g:airline#extensions#tabline#enabled = 1

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

	Plug 'dense-analysis/ale'

	Plug 'preservim/nerdtree'

	Plug 'vim-airline/vim-airline'

	Plug 'vim-airline/vim-airline-themes'

call plug#end()

" }}}

" Turn syntax highlighting on
syntax on

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Add numbers to each line on the left-hand side.
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Do not save backup files.
set nobackup

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Set the commands to save in history default number is 20.
set history=1000

" Set tab line
set showtabline=2


" NERDTREE TOGGLE/MAPS
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" VIM-AIRLINE MAPS
nnoremap <leader>, :bprevious<CR>
nnoremap <leader>. :bnext<CR>
nnoremap <leader>q :bd<CR>


" COLORSCHEME
colorscheme CandyPaper
