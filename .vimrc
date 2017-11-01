set nocompatible
filetype off

" vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'kien/ctrlp.vim'

" key mappings
noremap <F4> :set hlsearch! hlsearch?<CR>
imap ii <Esc>
map <leader>b :CtrlPBuffer<CR>
map <leader>f :CtrlP<CR>

" easier moving in windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" snippets
ab pdb import pdb; pdb.set_trace()
ab ipdb import ipdb; ipdb.set_trace()

" editor stuff
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=2
set number
set ignorecase
set smartcase
set directory=~/.vim/swapfiles//
set timeoutlen=250
syn on
filetype plugin indent on
hi MatchParen cterm=underline
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype c setlocal noexpandtab
autocmd Filetype ch setlocal noexpandtab

" gui stuff
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

"colors
set t_Co=256
colorscheme monokai

" syntax
let g:syntastic_python_checkers=['python']
