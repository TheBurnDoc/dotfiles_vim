" Install Pathogen for addin management
execute pathogen#infect()

" Use Vim settings rather than Vi settings
set nocompatible

" UTF-8 default encoding
set encoding=utf8

" Enable 256 colours on terminal
set t_Co=256

" Turn on syntax highlighting
syntax on

" Make sure file type detection is on
filetype plugin indent on

" Allow backspace over everything in insert mode
set backspace=indent,eol,start

" Use 4 spaces in place of tabs
set tabstop=4
set shiftwidth=4
set expandtab

" No sound
set visualbell

" Read file changed outside of vim
set autoread

" Make tab completion work
set wildmenu
set wildmode=list:longest

" Change window title
set title

" Increase command history
set history=1000

" Turn autoindenting on
set autoindent

" Enable mouse
set mouse=a

" Select with mouse
set selectmode=mouse

" Mouse wheel scrolling
set ttymouse=xterm2

" Show matching braces
set showmatch

" Search options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Add line under cursor
set cursorline

" Set 80 char gutter and highlight
set colorcolumn=80
match ErrorMsg /\%>80v.\+/

" Increase scrolling speed
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Use Molokai theme
color molokai
let g:molokai_original = 1

" Set line numbers to gray
highlight LineNr ctermfg=darkgray

" F9 toggles tag list plugin
nmap <silent> <F9> :TlistToggle<CR>

" F10 toggles line numbers (on by default)
set number
nmap <silent> <F10> :set invnumber<CR>

" F11 toggles whitespace (off by default)
set listchars=trail:·,eol:$
nmap <silent> <F11> :set nolist!<CR>

" Status line settings
set laststatus=2
set statusline=%F%m%r%h%w%r\ %y\ [%{&ff}]%=\ R%02l,C%02v\ [%p%%]
highlight StatusLine cterm=none ctermfg=7 ctermbg=4

" Format verticle split bar
set fillchars=vert:\│
highlight VertSplit ctermfg=0 ctermbg=7

" Setup default tags file search
set tags=./tags,./.tags,tags,.tags

" GNU Screen escape chars
if &term == "screen"
    set t_ts=k
    set t_fs=\
endif

" Terminal/screen title to currently open file
let &titlestring = "vim (" . expand("%:t") . ")"
if &term == "screen" || &term == "xterm"
    set title
endif

" Turn off Jedi docstring window
autocmd FileType python setlocal completeopt-=preview
