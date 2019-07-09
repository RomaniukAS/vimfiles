""""""""""""""""""""""""""""""""""""""""""""
"                EasyAlign                 "
""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


""""""""""""""""""""""""""""""""""""""""""""
"                 NERDTree                 "
""""""""""""""""""""""""""""""""""""""""""""
 
" NERDTree File highlighting
let NERDTreeShowHidden=1

""""""""""""""""""""""""""""""""""""""""""""
"               Airline                    "
""""""""""""""""""""""""""""""""""""""""""""
" Vim status bar theme (airline)
let g:airline_detect_modified=1
let g:airline_theme='dark'
let g:airline#extensions#fugitive#enabled   = 1
let g:airline#extensions#syntastic#enabled  = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#neomake#enabled = 1
let airline#extensions#neomake#error_symbol = 'E:'
let airline#extensions#neomake#warning_symbol = 'W:'


""""""""""""""""""""""""""""""""""""""""""""
"               Vim fzf                    "
""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" File preview for fzf (used bat)
"let g:fzf_files_options = '--preview "(bat --theme=TwoDark --color always {})"'
let g:fzf_files_options = '--preview "(bat --theme="OneHalfDark" --color always {})"'

""""""""""""""""""""""""""""""""""""""""""""
"               Vim sime                   "
""""""""""""""""""""""""""""""""""""""""""""
let g:slime_default_config={'socket_name': 'default', 'target_pane': '{right-of}'}
let g:slime_paste_file=tempname()
let g:slime_target='tmux'

""""""""""""""""""""""""""""""""""""""""""""
"               Vim php-namespace          "
""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType php inoremap <Leader><Leader>s <Esc>:call PhpSortUse()<CR> 
autocmd FileType php noremap <Leader><Leader>s :call PhpSortUse()<CR>

let g:php_namespace_sort = "'{,'}-1!awk '{print length, $0}' | sort -n -s | cut -d' ' -f2-"

""""""""""""""""""""""""""""""""""""""""""""
"               Vim neomake                "
""""""""""""""""""""""""""""""""""""""""""""
" Check on write to buffer
autocmd BufWritePost * Neomake

""""""""""""""""""""""""""""""""""""""""""""
"               Vim coc (autocomplete)     "
""""""""""""""""""""""""""""""""""""""""""""
" Use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

