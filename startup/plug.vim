" Install vim-plug if not eixsts
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" Plugins that allow make a text align
Plug 'junegunn/vim-easy-align'

" Autocomplition
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ALE (Asynchronous Lint Engine)
Plug 'w0rp/ale'

" Color scheme
Plug 'rainglow/vim'

" Fuzzy finder in popup
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" JavaScript
Plug 'pangloss/vim-javascript'

" TypeScript
Plug 'leafgarland/typescript-vim'

" React JSX
Plug 'peitalin/vim-jsx-typescript'

" GO-vim
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Nginx
Plug 'chr4/nginx.vim'

" Pre build Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" File undo
Plug 'sjl/gundo.vim'

" Status line
Plug 'itchyny/lightline.vim'

" Wiki plugin
Plug 'vimwiki/vimwiki'

" Css color highlight
Plug 'ap/vim-css-color'
call plug#end()
