set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'Shougo/vimproc' "Dont forget to 'make' in ~/.vim/vimproc
  Plugin 'Shougo/unite.vim'
  Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
  Plugin 'tomasr/molokai'
  Plugin 'fatih/vim-go'
  Plugin 'tpope/vim-surround'
  Plugin 'kien/ctrlp.vim'
  Plugin 'majutsushi/tagbar'
  "Plugin 'm2mdas/phpcomplete-extended'
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

" AUTOCOMPLETE CONFIG
"autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
"let g:phpcomplete_index_composer_command="composer"
" END AUTOCOMPLETE CONFIG
"
" BEGIN PRODUCTIVITY CONFIG
let mapleader = "\<Space>" " leader is space
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>t :TagbarToggle<CR><C-W>l
inoremap jj <ESC>

nnoremap <Leader>ww <C-W>w
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>wc <C-W>c

nnoremap <Leader>d <C-d>
nnoremap <Leader>u <C-u>

nnoremap <Leader>bb :buffers<CR>:buffer 
nnoremap <Leader>bl :buffers<CR>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>gr :GoRun<CR>
" END PRODUCTIVITY CONFIG

" BEGIN PLUGIN CONFIG
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
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

colorscheme molokai

if has("gui_running")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h15
	endif
endif
" END POWERLINE CONFIG
