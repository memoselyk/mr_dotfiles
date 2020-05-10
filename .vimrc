" =================== General settings ================= {{{
" Make non-ascii listchars to work
set encoding=utf-8
scriptencoding utf-8

" Enabled syntax highlighthing
syntax on

" Show matches as the search is being typed
set incsearch

" Show line numbers
set number
if exists("&relativenumber")
  set relativenumber
endif

" Autocompletion on command bar (similar to bash)
set wildmode=longest,list,full
set wildmenu

" Remember more history
set history=10000

" Show invisible chars
set listchars=tab:»·,nbsp:␣,trail:•
set list

" Invisible character colors
highlight CursorLineNr cterm=none ctermfg=0 guifg=#073642
highlight NonText cterm=none ctermfg=0 ctermbg=8 guifg=#073642
highlight SpecialKey cterm=none ctermfg=0 guifg=#073642 ctermbg=8 guibg=#002b36
" }}}

" ============== Plugin manager activation ============= {{{
" Independent testing with local files
" Establish the .vim directory relative to this script
" TODO: Doesn't work as advertised
let g:vimrc_home=expand("<sfile>:h")
let g:vimrc_home.="/.vim/"

function! Dot_vim(path)
  return g:vimrc_home.a:path
endfunction

" =============== Activate plugin manager ==================
exec "source ".Dot_vim("plugin-manager/plug.vim")
exec "source ".Dot_vim("bootstrap/bundles.vim")
" }}}

" ================ Plug-in configuration =============== {{{

  " CtrlP configuration {{{
let g:ctrlp_custom_ignore = '\.pyc$'
  " }}}

" }}}
