" Set leader keY
let mapleader="\<Space>"
let maplocalleader="\\"

nnoremap <silent>s :nohlsearch<Bar>:echo<CR>

" NeerdTree 
map <Leader>n :NERDTreeToggle<CR>
map <Leader>q :q<CR>
map <Leader>m :CommandTTag<CR>
map <Leader>w :w<CR>

" <Leader>f{char} to move to {char}
map  <Leader>m <Plug>(easymotion-bd-f)
nmap <Leader>m <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>; <Plug>(easymotion-bd-w)
nmap <Leader>; <Plug>(easymotion-overwin-w)

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

" Highlight search and turn-off it
nnoremap <silent>s :nohlsearch<Bar>:echo<CR>

nmap <Leader>sr :source ~/.vimrc<CR>

" Close vim
nnoremap <Leader> <Leader> <Esc> :xa<CR>
