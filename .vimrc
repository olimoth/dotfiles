set nocompatible
filetype off

" vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'kien/ctrlp.vim'
Bundle 'junegunn/goyo.vim'
Bundle 'reedes/vim-pencil'
Bundle 'tpope/vim-fugitive.git'
Bundle 'mileszs/ack.vim'

" key mappings
noremap <F4> :set hlsearch! hlsearch?<CR>
imap ii <Esc>
map <leader>b :CtrlPBuffer<CR>
map <leader>f :CtrlP<CR>
map <leader>t :CtrlPTag<CR>

" easier moving in windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" handle long lines better
nnoremap k gk
nnoremap j gj

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
set hidden
syn on
filetype plugin indent on
hi MatchParen cterm=underline
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype c setlocal noexpandtab
autocmd Filetype ch setlocal noexpandtab
autocmd Filetype cpp setlocal noexpandtab
autocmd BufEnter *.pp :setlocal filetype=ruby


" gui stuff
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" colors
set t_Co=256
colorscheme distinguished

" Color trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" syntax
function Py2()
    let g:syntastic_python_python_exec = '/usr/bin/python2.7'
endfunction

function Py3()
    let g:syntastic_python_python_exec = '/home/garyw/.pyenv/versions/3.6.5/bin/python'
endfunction

call Py2()
let g:syntastic_python_checkers=['python'] " , 'pylint']
let g:syntastic_python_pylint_args = '-E' "'--disable=R,C,global-statement'
let g:syntastic_ruby_checkers=['puppet-lint']

" functions
function! s:goyo_enter()
    set linebreak
endfunction

function! s:goyo_leave()
    set nolinebreak
endfunction

" tags
set tags=tags;/

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

