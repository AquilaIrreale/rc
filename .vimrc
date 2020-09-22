" Base config
set background=dark
set hlsearch
set shiftwidth=4
set tabstop=4
set expandtab
set nowrap
set nojoinspaces
set autoindent
set number
set relativenumber

set spelllang=it

highlight Tabs ctermbg=green guibg=green
highlight ExtraWhitespace ctermbg=red guibg=red

match Tabs /\t\+/
2match ExtraWhitespace /\s\+$/

autocmd ColorScheme * highlight Tabs ctermbg=green guibg=green
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

autocmd BufNewFile,BufRead *.sage set ft=python

syntax on

let mapleader = '-'

nnoremap <C-h> :nohlsearch<Return>

nnoremap <Leader>n :set number!<Return>
nnoremap <Leader>r :set relativenumber!<Return>

inoremap jj <Esc>

" Vim-plug plugin manager section
call plug#begin('~/.vim/plugged')
    " python-syntax
    Plug 'https://github.com/vim-python/python-syntax.git'
    " vim-repeat
    Plug 'https://github.com/tpope/vim-repeat.git'
    " vim-sexp
    Plug 'https://github.com/guns/vim-sexp.git'
    " vlime
    Plug 'https://github.com/vlime/vlime.git'
call plug#end()

" Python-syntax plugin config
let g:python_highlight_all = 1
