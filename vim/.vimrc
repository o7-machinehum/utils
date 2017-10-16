"Vim configuration - Walker
"--------------------
set number "This turns on line numbers
set noswapfile "Disable annoying swap files

set paste "Turn on paste mode

"Turn on Syntax
syntax on

color desert

"colorscheme default
"colorscheme afterglow
"colorscheme elflord

"Function Hotkeys
map <F3> :!./debug.sh<cr>
map <F4> :!

map <F5> :!make<cr>
map <F6> :!./flash<cr>
"map <F6> :!make flash<cr>

map <F7> :tabp<cr>
map <F8> :tabn<cr>
map <F9> :tabedit

"Ctrl Driven Functions
map <c-o> :w<cr>

"Tab Stuff
set shiftwidth=2
set tabstop=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Line Wrap
set whichwrap+=<,>,h,l,[,]

"Cursorline
set cursorline


"Notes
"Column Select
"	1. ctrl + v
"	2. after selected, "c"
" 3. Type what you need
" 4. <esc> <esc>

