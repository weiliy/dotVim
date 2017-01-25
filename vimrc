set nocompatible
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

if has("autocmd")
    filetype on
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 et
endif
