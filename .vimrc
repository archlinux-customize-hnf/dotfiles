"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
" (_)_/ |_|_| |_| |_|_|  \___|
"
" -----------------------------------------------------------------------
"
" Basic settings
set nocompatible
set number relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set showtabline=1
set autoindent
set smartindent
set wrap
set linebreak
set encoding=UTF-8
set spell spelllang=en
set laststatus=2
set statusline=%f%m%r%h\ [%L]\ [%{&ff}]\ %y%=[%p%%]\ [line:%05l,col:%02v]
"set background=dark
"set noshowmode
set showmatch
set hlsearch
set incsearch
set ignorecase smartcase
syntax enable
filetype indent on

"Show end-of-lines/tabs/trails/extends/precedes/spaces
set listchars=eol:¬,tab:¦·,trail:~,extends:>,precedes:<,space:·
set list

"Setting fold methods and shortcuts
set foldmethod=manual
nnoremap <F9> za
vnoremap <F9> zf

" Cursor shape
let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

" Cursor line and cursor column
set cursorline
set cursorcolumn
" for dark theme
hi CursorLine ctermfg=NONE ctermbg=234 cterm=bold
hi CursorColumn ctermfg=NONE ctermbg=234 cterm=bold
" for light theme
" hi CursorLine ctermfg=NONE ctermbg=254 cterm=bold
" hi CursorColumn ctermfg=NONE ctermbg=254 cterm=bold

" Settings for misspelled words
hi clear SpellBad
hi SpellBad cterm=underline,bold

" Settings for Golang / Groff
autocmd FileType go setlocal noexpandtab
autocmd BufRead,BufNewFile *.ms,*.man setlocal noexpandtab

