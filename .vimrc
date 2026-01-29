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

	Plug 'Yggdroot/indentLine'

    Plug 'ciaranm/detectindent'

    Plug 'nathanaelkane/vim-indent-guides'

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

" Spaces on tabs
" set expandtab

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



" ALE CONFIGURATION



" Use ALE as a LSP client
let g:ale_disable_lsp = 0
let g:ale_completion_enabled = 1
let g:ale_set_highlights = 0

" Automatic lint
" Do not lint while typing
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1

" Show errors on the airline
" let g:airline#extensions#ale#enabled = 1

" Just a delay
let g:ale_lint_delay = 300

let g:ale_linters = {
\   'c': ['clangd', 'gcc'],
\   'cpp': ['clangd'],
\}




" NERDTREE TOGGLE/MAPS
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>


" VIM-AIRLINE MAPS
nnoremap <leader>, :bprevious<CR>
nnoremap <leader>. :bnext<CR>
nnoremap <leader>q :bd<CR>


" INDENT LINES
let g:indentLine_enabled = 1
let g:indentLine_char = '┊'


" GUIDE LINES
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
highlight IndentGuidesOdd  ctermfg=235
highlight IndentGuidesEven ctermfg=233


" COLORSCHEME
colorscheme CandyPaper
