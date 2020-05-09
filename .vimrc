" BEGIN: Lines copied from $VIM/_vimrc
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
" END: Lines copied from $VIM/_vimrc

" Normalize the home directory, since GVim on Windows can start up in some
" very useless places.
if (getcwd() == $VIMRUNTIME) || (getcwd() == "C:\\Windows\\system32")
    cd $HOME
endif

"Personal Settings.
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

" =================== General settings =====================
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

" ========================= Activate plugin manager ============================
" Load pathogen before filetype detection
runtime bundle/00-pathogen/autoload/pathogen.vim
call pathogen#infect()
filetype plugin indent on

" ========================== Plug-in configuration =============================

" NERDTree quick toggle
nmap <leader>d :NERDTreeToggle<CR>
"
" vim-easymotion config
" let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"
" vim-easy-align config
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Ctrl+P config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" CtrlP configuration
let g:ctrlp_custom_ignore = '\.pyc$'

" Exclude files and directories from CtrlP
set wildignore+=*.class,*.pyc
