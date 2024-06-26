set nocompatible
filetype off

" vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/Vundle.vim'
Bundle 'scrooloose/syntastic.git'
Bundle 'kien/ctrlp.vim'
Bundle 'junegunn/goyo.vim'
Bundle 'junegunn/fzf'
Bundle 'junegunn/fzf.vim'

" key mappings
noremap <F4> :set hlsearch! hlsearch?<CR>
noremap <F2> :set paste! paste?<CR>
imap ii <Esc>
nmap gh :tabprevious<CR>
nmap gl :tabnext<CR>
"map <leader>b :CtrlPBuffer<CR>
map <leader>b :Buffers<CR>
"map <leader>f :CtrlP<CR>
map <leader>g :Files<CR>
map <leader>f :GFiles<CR>
"map <leader>t :CtrlPTag<CR>
map <leader>t :Tags<CR>

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
set autoindent
set backspace=2
set directory=~/.vim/swapfiles//
set expandtab
set hidden
set ignorecase
set mouse=a
set number
set shiftwidth=4
set smartcase
set softtabstop=4
set tabstop=4
set timeoutlen=250
set ttymouse=xterm2
syn on
filetype plugin indent on
hi MatchParen cterm=underline
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescriptreact setlocal ts=2 sts=2 sw=2
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
colorscheme molokai

" Color trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" syntax
let g:syntastic_python_python_exec = '/usr/bin/python3'
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
set tags=./tags,tags;$HOME

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

