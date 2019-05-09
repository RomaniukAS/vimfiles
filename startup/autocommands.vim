" Auto reload ~/.vimrc file
if has('autocmd')
    autocmd bufwritepost $HOUME/.vimrc source $MYVIMRC
endif



""""""""""""""""""""""""""""""""""""""""""""
"               Vim fzf                    "
""""""""""""""""""""""""""""""""""""""""""""
" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], [preview window], [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Bat: https://github.com/sharkdp/bat
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
autocmd! VimEnter * command! -nargs=* -complete=file Ag :call fzf#vim#ag_raw(<q-args>, fzf#wrap('ag-raw',
\ {'options': "--preview 'bat --theme=TwoDark --color always {} $(cut -d: -f1 <<< {}) 2> /dev/null | sed -n $(cut -d: -f2 <<< {}),\\$p | head -".&lines."'"}))
