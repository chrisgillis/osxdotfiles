set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
  Plugin 'tomasr/molokai'
  Plugin 'jnwhiteh/vim-golang'
call vundle#end()

filetype plugin indent on

" BEGIN GENERAL CONFIG
set nocp
set number
set noerrorbells
set showmatch
set hls
set showcmd
syntax on
" END GENERAL CONFIG

" BEGIN PLUGIN CONFIG
colorscheme molokai
" END PLUGIN CONFIG

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
