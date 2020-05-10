" ======= Highlight whitespace errors in red color =========
highlight BadWhitespace ctermbg=red guibg=red

" TODO: Use a syntax match since match might be used for other purposes
" Only trailing whitespace
au BufRead,BufNewFile *.c,*.h match BadWhitespace /\s\+$/
" For python, tab-based indentations as well as trailing whitespaces
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+\|\s\+$/
