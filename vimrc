set nocompatible

call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/morhetz/gruvbox'
call plug#end()

syntax on

colorscheme gruvbox

set number
set relativenumber
set shiftwidth=4
set tabstop=4

set noerrorbells

nnoremap x "_x

nnoremap <F5> :w <CR> :!clear && g++ -std=c++17 -fsanitize=address -Wall -Wextra -O2 -DLOCAL -o %< % && time ./%< <CR>
inoremap <F5> <ESC> :w <CR> :!clear && g++ -std=c++17 -fsanitize=address -Wall -Wextra -O2 -DLOCAL -o %< % && time ./%< <CR>

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
nnoremap <C-t> : call Toggle_transparent()<CR>

