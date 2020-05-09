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
   let eq = ''
   if $VIMRUNTIME =~ ' '
     if &sh =~ '\<cmd'
       let cmd = '""' . $VIMRUNTIME . '\diff"'
       let eq = '"'
     else
       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
     endif
   else
     let cmd = $VIMRUNTIME . '\diff'
   endif
   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
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
