set clipboard=unnamed
set scrolloff=8
set number
set relativenumber
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set hlsearch incsearch
set cursorline
set showcmd

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

set background=dark
colorscheme deus

if has('nvim') || has('termguicolors')
   set termguicolors
endif

let mapleader = " "

nnoremap <leader>w :w<CR>
nnoremap <leader>e :Vex<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <leader>ns :nohls<CR>
vnoremap <leader>p "_dP

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
