" Fix for SSH from windows machine (?)
set t_Co=256

" Personal Settings.
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" Common basic settings
set number
set ruler
set encoding=utf-8
set backspace=indent,eol,start
syntax on
set wildmode=longest,list,full
set wildmenu
set relativenumber

"Required to enable airline plugin
set laststatus=2
let g:airline_theme = 'wombat'

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
