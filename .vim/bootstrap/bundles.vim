" Vim plugin prelude

let s:bundle_home=Dot_vim("bundle")

if !isdirectory(Dot_vim("bundle"))
  silent exec "!mkdir -p ".s:bundle_home
  let s:bootstrap=1
endif

call plug#begin(s:bundle_home)

" Add plugins here {{{
  " Files (source code) navigation {{{
" Improved file explorer
Plug 'preservim/nerdtree'

" Fuzzy search of files
Plug 'ctrlpvim/ctrlp.vim'
  "}}}
" }}}

if exists("s:bootstrap") && s:bootstrap
  unlet s:bootstrap
  autocmd VimEnter * PlugInstall
endif

call plug#end()
