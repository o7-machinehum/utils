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


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set linebreak "Don't wrap words

"Line Wrap
set whichwrap+=<,>,h,l,[,]

"Cursorline
" set cursorline

" virtual tabstops using spaces
set shiftwidth=4
set softtabstop=4
set expandtab
" allow toggling between local and default mode
function TabToggle()
  if &expandtab
    set shiftwidth=4
    set softtabstop=0
    set noexpandtab
    echo "Tabs are off (Normal mode)"
  else
    set shiftwidth=4
    set softtabstop=4
    set expandtab
    echo "Tabs are on (Dumb mode)"
  endif
endfunction
nmap <F3> mz:execute TabToggle()<CR>'z

" filetype plugin indent on

