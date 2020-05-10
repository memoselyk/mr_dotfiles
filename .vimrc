" =================== General settings ================= {{{
" Enabled syntax highlighthing
syntax on

" Show matches as the search is being typed
set incsearch

" Show line numbers
set number
set relativenumber

" Autocompletion on command bar (similar to bash)
set wildmode=longest,list,full
set wildmenu

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
