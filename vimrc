set nocompatible

call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

syntax on

let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''

let g:airline#extensions#tabline#formatter = 'default'

set noshowmode

"let g:airline_theme = "tokyonight"

set termguicolors

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme gruvbox

set background=dark

set number
set relativenumber
set shiftwidth=3
set tabstop=3
set expandtab
set mouse=a

set noerrorbells

nnoremap x "_x

nnoremap <F9> :w <CR> :!clear && g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wno-unused-const-variable -O2 -DLOCAL -o %< % && time ./%< <CR>

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_transparent = 0
    endif
endfunction
call Toggle_transparent()
