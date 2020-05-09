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

" Remember more history
set history=10000

" Show invisible chars
set listchars=tab:»·,nbsp:␣,trail:•
set list

" Invisible character colors
highlight CursorLineNr cterm=none ctermfg=0 guifg=#073642
highlight NonText cterm=none ctermfg=0 ctermbg=8 guifg=#073642
highlight SpecialKey cterm=none ctermfg=0 guifg=#073642 ctermbg=8 guibg=#002b36

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

" Enable spell checking in git commit
au FileType gitcommit set spell
au FileType gitcommit colorscheme wombat
