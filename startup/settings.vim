if v:progname == 'vi'
  set noloadplugins
endif

" Display line numbers
set number
" Auto load file if it was changed
set autoread
set tabstop=4 
set shiftwidth=4
set expandtab

" Highlight search word
"set hlsearch
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

" Persist undo between sessions
set undodir=~/.vim/undodir

" Width of wrapped texts
set tw=120

" Display a separate line at the end of columns
set termguicolors
set colorcolumn=+1

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
set spelllang=en_us

" Required
filetype off

" Disable automatic comment insertion
set formatoptions-=cro  

" Break symbol
set showbreak=⤥\ 

" Automatic, language-dependent indentation, syntax coloring and other
" functionality.
filetype indent plugin on
syntax on

" Change cursor color
" use an orange cursor in insert mode
let &t_SI .= "\<Esc>]12;white\x7"
" use a red cursor otherwise
let &t_EI .= "\<Esc>]12;white\x7"
" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
let &t_SI .= "\<Esc>[5 q"
let &t_EI .= "\<Esc>[1 q"

" Folding
if has('folding')
    if has('windows')
        let &fillchars='vert: '         " less cluttered vertical window separators
    endif
    set foldmethod=indent               " not as cool as syntax, but faster
    set foldlevelstart=99               " start unfolded
endif

if v:version > 703 || v:version == 703 && has('patch541')
    set formatoptions+=j                " remove comment leader when joining comment lines
endif

" If installed using git
set rtp+=~/.fzf

" Open .vimrc in new tab
noremap <leader>v :tabedit $MYVIMRC<CR>

" Auto save when lost a focus
au FocusLost * :wa

" Autorefresh file
au FocusGained * :checktime

" Set cursor always white
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:Cursor,sm:block
