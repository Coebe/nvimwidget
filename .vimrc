" edit setting
set tabstop=4  " tab key contain space num

" showing setting
set laststatus=2 " always showing status bar
set number   " show line index

set relativenumber " show the relative line number

" key mapping
let mapleader=" "
vnoremap <Space>y "+y
vnoremap <Space>p "+p

" window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-q> <C-w>q

" ---------------------------------------------------------

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"  Ps = 0 -> blinking block.
"  Ps = 1 -> blinking block (default).
"  Ps = 2 -> steady block.
"  Ps = 3 -> blinking underline.
"  Ps = 4 -> steady underline.
"  Ps = 5 -> blinking bar (xterm).
"  Ps = 6 -> steady bar (xterm).
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
