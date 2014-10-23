set nocompatible
filetype off

" vundle stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree.git'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'scrooloose/syntastic.git'
"Bundle 'itspriddle/vim-fuzzyfinder-pathogen.git'

" key mappings
noremap <F4> :set hlsearch! hlsearch?<CR>
" imap <M-Space> <Esc>
imap ii <Esc>
" imap <leader>j <Esc> 
map <leader>b :FufBuffer<CR>
map <leader>f :FufFile<CR>

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


