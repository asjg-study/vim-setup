"Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"More standard copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

"Quicksave
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"You can move blocks with < or >, this keeps the selection
vnoremap < <gv
vnoremap > >gv

""
" Vundle stuff
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')
"
 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 " add all your plugins here (note older versions of Vundle
 " used Bundle instead of Plugin)

 " ...

set number "Line numbering turned on

set numberwidth=4 "max 4 digits of line numbers are displayed 

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Enable folding with spacebar
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"use utf-8
set encoding=utf-8

""python auto-complete
"Bundle 'Valloric/YouCompleteMe'

"Syntax Checking
Plugin 'vim-syntastic/syntastic'

"pretty code
let python_highlight_all=1
syntax on
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
