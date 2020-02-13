" Set leader key
let mapleader="\<Space>"
let maplocalleader="\\"

" Jump to definition
nmap <Leader>] <C-]><CR>

" Unhighlight search
nnoremap <Leader>S :nohlsearch<Bar>:echo<CR>

" Highlight all search
nnoremap <Leader>h <C-*><CR>

" Folding
nnoremap <Leader><Leader>f zM<CR>
nnoremap <Leader><Leader>r zR<CR>

" Splits movements
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Copy paste form PRIMARY and CLIPBOARD
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Change preview size
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" Open .vimrc in new tab
noremap <leader>v :tabedit $MYVIMRC<CR>

" Reload config file
nnoremap <silent> <leader>V :source ~/.vimrc<cr>:filetype detect<cr>:exe ":echo 'vimrc reloaded'"<cr>

" Line editing (add empty line above and bellow)
nmap zk O<ESC>j
nmap zj o<ESC>k

map <Leader>q :q<CR>
map <Leader><Leader>q :qall!<CR>
map <Leader>w :w<CR>

nnoremap <silent> j j:redraw<CR>
nnoremap <silent> k k:redraw<CR>

" save sesson to file
nnoremap <Leader><C-k> :mks! ~/.dotfiles/.vim/session/sess.vim<cr>
" restore sesion from file
nnoremap <Leader><C-l> :so ~/.dotfiles/.vim/session/sess.vim<cr>

""""""""""""""""""""""""""""""""""""""""""""
"                 NERDTree                 "
""""""""""""""""""""""""""""""""""""""""""""
" Open file location in NERDTree 
nnoremap <Leader>o :NERDTreeFind<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>Q :SSave[!]<Bar>:qa<CR>


""""""""""""""""""""""""""""""""""""""""""""
"                EasyMotion                "
""""""""""""""""""""""""""""""""""""""""""""
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map  <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>; <Plug>(easymotion-bd-w)
nmap <Leader>; <Plug>(easymotion-overwin-w)


""""""""""""""""""""""""""""""""""""""""""""
"                Fzf Vim                   "
""""""""""""""""""""""""""""""""""""""""""""
" Map for fzf
"nmap <Leader>. :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>
" File path completion in Insert mode using fzf
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-buffer-line)


""""""""""""""""""""""""""""""""""""""""""""
"                Ctags                     "
""""""""""""""""""""""""""""""""""""""""""""
" Search word under cursor
nnoremap <leader>d :call fzf#vim#tags(expand('<cword>'), {'options': '--exact --select-1 --exit-0'})<CR>

nmap <S-Tab> za

" Search word by Ag
nnoremap <leader><C-f> :Ag<CR>

" Move line up and down
nnoremap <S-k> :m-2<CR>
nnoremap <S-j> :m+<CR>

" surround by quotes - frequently use cases of vim-surround
map <Leader>" ysiw"<cr>
map <Leader>' ysiw '<cr>

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Re-save file sith sudo
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!


""""""""""""""""""""""""""""""""""""""""""""
"                Git-gutter                  "
""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>u <Plug>GitGutterUndoHunk

""""""""""""""""""""""""""""""""""""""""""""
"                LeaderF                   "
""""""""""""""""""""""""""""""""""""""""""""
"noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>. :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
