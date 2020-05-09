" =================== General settings =====================
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

" Show invisible chars
set listchars=tab:»·,trail:•
set list

" ========================= Activate plugin manager ============================
" Load pathogen before filetype detection
runtime bundle/00-pathogen/autoload/pathogen.vim
call pathogen#infect()
filetype plugin indent on

" ========================== Plug-in configuration =============================

" CtrlP configuration
let g:ctrlp_custom_ignore = '\.pyc$'

" ======================== Autocommand customizations ==========================
highlight BadWhitespace ctermbg=red guibg=red

" Highlight trailing whitespace in a red color
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" For python, also highlight tab-based indentations
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
