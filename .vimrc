set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

set number
map <silent> <C-n> :NERDTreeFocus<CR>
" Auto open NerdTree on directory open.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" for easy nerd tree navigation
set mouse=a
let NERDTreeMouseMode=2
:command NE NERDTree

Plugin 'wakatime/vim-wakatime'
Plugin 'itchyny/lightline.vim'
