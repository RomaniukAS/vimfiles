set number
set autoread
set tabstop=4 
set shiftwidth=4
set expandtab
set hlsearch

" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
let &t_SI = "\<Esc>[5 q"
let &t_EI = "\<Esc>[1 q"

" Autosave when lost a focuse
:au FocusLost * :wa

" Break symbol
set showbreak=⤥\ 

" Search colors
hi Search ctermbg=LightGrey
hi Search ctermfg=DarkRed

" Curosor config
hi Cursor ctermfg=black

" Vim status bar theme (airline)
let g:airline_detect_modified=1
let g:airline_theme='dark'

" Automatic, language-dependent indentation, syntax coloring and other
" functionality.
filetype indent plugin on
syntax on


" ################################# Vim-Plub ########################################
" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'wincent/command-t'
Plug 'vim-scripts/bash-support.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'wincent/command-t'    
Plug 'iamcco/markdown-preview.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'

call plug#end()
execute pathogen#infect()
call pathogen#helptags()
" ###################################################################################


" ################################# Vundel ##########################################
set nocompatible              " be iMproved, required
filetype off                  " required
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-plug'
Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()            " required
filetype plugin indent on    " required
" ######E############################################################################



" Vim status bar theme

" NERDTress File highlighting
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

" vim-markdown
let g:vim_markdown_folding_disabled = 1

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

" Autoreload ~/.vimrc file
if has('autocmd')
    autocmd bufwritepost $HOUME/.vimrc source $MYVIMRC
endif

source ./maps.vim
