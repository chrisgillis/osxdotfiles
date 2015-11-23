set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
  Plugin 'tomasr/molokai'
  Plugin 'fatih/vim-go'
  Plugin 'kien/ctrlp.vim'
call vundle#end()

set rtp+=$GOROOT/misc/vim
filetype plugin indent on

" BEGIN GENERAL CONFIG
set nowrap " dont wrap ze lines
set backspace=indent,eol,start " allow backspacing 
set autoindent
set nocp
set number
set noerrorbells
set showmatch
set hls
set hlsearch
set incsearch
set showcmd
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround
set ignorecase
set smartcase
set title
syntax on
" END GENERAL CONFIG

" BEGIN PRODUCTIVITY CONFIG
let mapleader = "\<Space>" " leader is space
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
inoremap jj <ESC>
" END PRODUCTIVITY CONFIG

" BEGIN PLUGIN CONFIG
colorscheme molokai
" END PLUGIN CONFIG

" BEGIN MACVIM SETUP
if has("gui_running")
	set guioptions-=m
	set guioptions-=t
	set guioptions-=r
	set guioptions-=L
endif
" END MACVIM SETUP

" BEGIN POWERLINE CONFIG
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set laststatus=2

if has("gui_running")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h15
	endif
endif
" END POWERLINE CONFIG
