set nocompatible

call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/nordtheme/vim'
call plug#end()

syntax on

let g:c_syntax_for_h = 1
let g:c_no_curly_error = 1

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''

let g:airline#extensions#tabline#formatter = 'default'

set noshowmode

set termguicolors

colorscheme nord

set background=dark

set number
set relativenumber
set shiftwidth=3
set tabstop=3
set expandtab
set mouse=a
set ignorecase

set noerrorbells

nnoremap x "_x

nnoremap <F9> :w <CR> :!clear; g++ -g -ggdb -O0 -fsanitize=address -std=c++20 -Wall -Wextra -Wno-unused-const-variable -DLOCAL -o %< % && time ./%< <CR>

nnoremap <C-l> :noh <CR>

"LET &T_si = "\E[6 Q"
"LET &T_ei = "\E[2 Q"

"let t:is_transparent = 0
"function! Toggle_transparent()
"    if t:is_transparent == 0
"        hi Normal guibg=NONE ctermbg=NONE
"        let t:is_transparent = 1
"    else
"        set background=dark
"        let t:is_transparent = 0
"    endif
"endfunction
"call Toggle_transparent()
