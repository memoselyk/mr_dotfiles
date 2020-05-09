" BEGIN: Lines copied from $VIM/_vimrc
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
 function MyDiff()
   let opt = '-a --binary '
   if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
   if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
   let arg1 = v:fname_in
   if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
   let arg2 = v:fname_new
   if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
   let arg3 = v:fname_out
   if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
   if $VIMRUNTIME =~ ' '
     if &sh =~ '\<cmd'
       if empty(&shellxquote)
         let l:shxq_sav = ''
         set shellxquote&
       endif
       let cmd = '"' . $VIMRUNTIME . '\diff"'
     else
       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
     endif
   else
     let cmd = $VIMRUNTIME . '\diff'
   endif
   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
   if exists('l:shxq_sav')
     let &shellxquote=l:shxq_sav
   endif
 endfunction
" END: Lines copied from $VIM/_vimrc

" Normalize the home directory, since GVim on Windows can start up in some
" very useless places.
if (getcwd() == $VIMRUNTIME) || (getcwd() == "C:\\Windows\\system32")
    cd $HOME
endif

"Personal Settings.
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

set number
set encoding=utf-8
set nobackup

"Try improved autocompletion
set wildmenu
set wildmode=list:longest,full

" Setting for Java editing
" display indentation guides
set list listchars=tab:→-,trail:·,extends:»,precedes:«,nbsp:×

"Required to enable airline plug-in
set laststatus=2

" Enable powerline fonts for Vim-airline
if has ('win32')
    set guifont=Powerline_Consolas:h9:cANSI
else
    set guifont=Powerline\ Consolas\ 10
endif
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme             = 'powerlineish'
" let g:airline_theme             = 'wombat'

"Set Color Scheme (solarized)
let g:solarized_italic=0
colorscheme solarized

" Load togglebg plugin (which is not loaded automatically)
call togglebg#map("")

" Enable spell checking... hopefully it doesn't get annoying
set spell spelllang=en_us

"set line no, buffer, search, highlight, autoindent and more.
set hidden
set ignorecase
set incsearch
set smartcase
set showmatch
set autoindent
set ruler
set vb
"set viminfo+=n$VIM/_viminfo
set noerrorbells
set showcmd
set mouse=a
set history=1000
set undolevels=1000
