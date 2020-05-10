" Vim plugin prelude

let s:bundle_home=Dot_vim("bundle")

if !isdirectory(Dot_vim("bundle"))
  silent exec "!mkdir -p ".s:bundle_home
  let s:bootstrap=1
endif

call plug#begin(s:bundle_home)

" Add plugins here {{{
  " Color schemes {{{
" Dark gray color scheme sharing some similarities with Desert
Plug 'vim-scripts/Wombat'

" Solarized Colorscheme: Precision colors for machines and people
Plug 'altercation/vim-colors-solarized'
  "}}}

  " Files (source code) navigation {{{
" Improved file explorer
Plug 'preservim/nerdtree'

" Fuzzy search of files
Plug 'ctrlpvim/ctrlp.vim'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
  "}}}

  " Editing (aesthetics, code creation and in-file moving) plugins {{{
" Display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'
  "}}}
" }}}

if exists("s:bootstrap") && s:bootstrap
  unlet s:bootstrap
  autocmd VimEnter * PlugInstall
endif

call plug#end()
