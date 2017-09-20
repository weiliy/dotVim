set nocompatible
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nu

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("autocmd")
    filetype on
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 et
endif



call plug#begin('~/.vim/plugged')
Plug 'ngloss/vim-javascript'
call plug#end()
