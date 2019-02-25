set number
set autoread                  " auto load file if it was changed
set tabstop=4 
set shiftwidth=4
set expandtab
set hlsearch
set relativenumber
set nocompatible              " be iMproved, required
set shell=sh
set timeoutlen=3000
set updatetime=100
set noswapfile                " Turrn off .swp file creation
set expandtab                 "Use soft tab stop spaces instead of tab characters for indentation
set shiftwidth=4              "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=4             "Indent by 4 spaces when pressing <TAB>

set autoindent                "Keep indentation from previous line
set smartindent               "Automatically inserts indentation in some cases
set cindent                   "Like smart indent, but stricter and more customisable

" Search down into sub folders
" Provides tab-completion
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Spell checking
" set spell spelllang=en_us

filetype off                  " required

" Change cursor color
" use an orange cursor in insert mode
let &t_SI .= "\<Esc>]12;white\x7"
" use a red cursor otherwise
let &t_EI .= "\<Esc>]12;white\x7"

" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
let &t_SI .= "\<Esc>[5 q"
let &t_EI .= "\<Esc>[1 q"

" Auto save when lost a focus
:au FocusLost * :wa

" Break symbol
set showbreak=⤥\ 

" Search colors
hi Search ctermbg=LightGrey
hi Search ctermfg=DarkRed

" Vim status bar theme (airline)
let g:airline_detect_modified=1
let g:airline_theme='dark'

execute pathogen#infect()
call pathogen#helptags()

" NERDTree File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
let NERDTreeShowHidden=1

" Vim-markdown
let g:vim_markdown_folding_disabled = 1

" Vim airline
let g:airline_powerline_fonts = 1

" Folding
if has('folding')
    if has('windows')
        let &fillchars='vert: '           " less cluttered vertical window separators
    endif
    set foldmethod=indent               " not as cool as syntax, but faster
    set foldlevelstart=99               " start unfolded
endif

if v:version > 703 || v:version == 703 && has('patch541')
    set formatoptions+=j                " remove comment leader when joining comment lines
endif

highlight Folded ctermbg=Grey ctermfg=Black
highlight FoldColumn guibg=darkgrey guifg=white

" Auto reload ~/.vimrc file
if has('autocmd')
    autocmd bufwritepost $HOUME/.vimrc source $MYVIMRC
endif

" Automatic, language-dependent indentation, syntax coloring and other
" functionality.
filetype indent plugin on
syntax on

" Load maps config
source ~/.vim/maps.vim

" Load fzf configuration
source ~/.vim/fzf_conf.vim
