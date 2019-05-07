" Display line numbers
set number
" Auto load file if it was changed
set autoread
set tabstop=4 
set shiftwidth=4
set expandtab
" Highlight search word
set hlsearch
set relativenumber
" Be iMproved, required
set nocompatible
set shell=sh
set timeoutlen=3000
set updatetime=100
" Turrn off .swp file creation
set noswapfile
" Use soft tab stop spaces instead of tab characters for indentation
set expandtab
" Indent by 4 spaces when using >>, <<, == etc.
set shiftwidth=4
" Indent by 4 spaces when pressing <TAB>
set softtabstop=4

set termguicolors
" Keep indentation from previous line
set autoindent
" Automatically inserts indentation in some cases
set smartindent
" Like smart indent, but stricter and more customisable
set cindent
" Search down into sub folders Provides tab-completion
set path+=**
" Display all matching files when we tab complete
set wildmenu
" Spell checking
"spelllang=en_us
" Required
filetype off
" Disable automatic comment insertion
set formatoptions-=cro  
