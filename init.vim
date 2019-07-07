set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

" Use deoplete.
let g:deoplete#enable_at_startup = 1
