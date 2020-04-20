"
"     ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄
"    ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█
"     ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄
"      ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"       ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"       ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"       ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒
"         ░░   ▒ ░░      ░     ░░   ░ ░
"          ░   ░         ░      ░     ░ ░
"         ░                           ░

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
map <F3> :s/foo/bar/g 

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

" Ctrl Driven Functions
map <c-o> :w<cr>

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines
set linebreak " Don't wrap words
set breakindent " Tab Wrapped lines

" Line Wrap
set whichwrap+=<,>,h,l,[,]

set nocursorline

" virtual tabstops using spaces
set shiftwidth=4
set softtabstop=4
set expandtab
set ts=4 sts=4 et

filetype plugin indent on

au BufWinLeave * mkview
au BufWinEnter * silent loadview

set textwidth=80 " Set text to wrap. To format text use the :gq

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
