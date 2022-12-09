" Edit Setting

set tabstop=4		" tab key space num

" Showing setting

set laststatus=2	" always showing status bar
set number			" show line index
set relativenumber	" show the relative line inde

" ---------------------------------------------------------

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
" 	Ps = 0	-> blinking block.
" 	Ps = 1	-> blinking block (default).
" 	Ps = 2	-> steady block.
" 	Ps = 3	-> blinking underline.
" 	Ps = 4	-> steady underline.
" 	Ps = 5	-> blinking bar (xterm).
" 	Ps = 6	-> steady bar (xterm).
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
