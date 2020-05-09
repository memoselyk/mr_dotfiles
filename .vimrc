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

" Fix for SSH from windows machine (?)
set t_Co=256

" Common basic settings
set ruler
set encoding=utf-8
set backspace=indent,eol,start

"Required to enable airline plugin
set laststatus=2
let g:airline_theme = 'wombat'

if has("autocmd")
    autocmd FileType htmldjango set tabstop=4|set shiftwidth=4|set expandtab|set smarttab
    autocmd FileType html       set tabstop=4|set shiftwidth=4|set expandtab|set smarttab
endif

" Pymode specific settings
let g:pymode_rope_complete_on_dot = 0
let g:pymode_options_max_line_length = 99

" Specific lint configuration for Automation projects
let automation_lint_ignore = []
" ######## Disabling pep8 messages
  call add(automation_lint_ignore, 'E30')    " Expected X blanks found ...

au BufRead,BufNewFile ~/auto_tools/* let g:pymode_lint_ignore=join(automation_lint_ignore, ',')
au BufRead,BufNewFile ~/auto_tools/* let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'pylint']
au BufRead,BufNewFile ~/auto_tools/* let g:pymode_lint_on_write = 0

" Settings for xmledit plugin
let g:xmledit_enable_html=1

" Point to the correct snippets directory
let g:UltiSnipsSnippetsDir="~/.vim/bundle/vim-snippets/UltiSnips"

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsListSnippets="<C-e>"
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Merlin installation
" let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
" execute "set rtp+=" . g:opamshare . "/merlin/vim"
" execute "set rtp+=" . g:opamshare . "/vimbufsync"
" execute "helptags " . g:opamshare . "/merlin/vim/doc"
" let g:syntastic_ocaml_checkers=['merlin']

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
