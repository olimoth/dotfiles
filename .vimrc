set nocompatible
filetype off

" vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree.git'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/rainbow_parentheses.vim'
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

" editor stuff
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=2
set number
syn on
filetype plugin indent on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
hi MatchParen cterm=underline

"colors
set t_Co=256
colorscheme monokai


