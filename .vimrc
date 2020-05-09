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

" ======================== Autocommand customizations ==========================
highlight BadWhitespace ctermbg=red guibg=red

" Highlight trailing whitespace in a red color
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" For python, also highlight tab-based indentations
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
