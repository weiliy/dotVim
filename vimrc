set nocompatible
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nu

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

let g:javascript_plugin_flow = 1
let g:vue_disable_pre_processors=1

" config netrw followed https://shapeshed.com/vim-netrw/
"let g:netrw_banner = 0
let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
" end of netrw config

" bind K to grep word under cursor
nnoremap K :Ag <C-R><C-W> <CR>

" set filetypes as typescript.jsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.jsx

if has("autocmd")
    filetype on
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 et autoindent
    " au FileType javascript setlocal foldmethod=syntax
    autocmd FileType vue syntax sync fromstart
    autocmd BufNewFile,BufRead *.yaml.j2 set syntax=yaml
endif

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'stephpy/vim-yaml'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'w0rp/ale'
" fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'keith/swift.vim'
call plug#end()
