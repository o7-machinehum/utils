"Vim configuration - Walker 
"--------------------
set number "This turns on line numbers
set noswapfile "Disable annoying swap files

set paste "Turn on paste mode

"Turn on Syntax
syntax on

color desert
set rnu

"colorscheme default
"colorscheme afterglow
"colorscheme elflord

"Function Hotkeys
:map <F2> :setlocal spell! spelllang=en_us<CR>
map <F3> :!./debug.sh<cr>

map <F5> :!make<cr>
map <F6> :!./flash<cr>

map <F7> :tabp<cr>
map <F8> :tabn<cr>
map <F9> :tabedit

"Tell vim not to jump over lines (: and ! makes it work in insert mode)
nmap <silent> <Down> gj
nmap <silent> <Up> gk

nmap <silent> j gj
nmap <silent> k gk

"Ctrl Driven Functions
map <c-o> :w<cr>

"Tab Stuff
set shiftwidth=2
set tabstop=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set linebreak "Don't wrap words

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

filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" On pressing tab, insert 4 spaces
set expandtab

" Make the wrapped lines tab in
set breakindent
