" =====================================
" key map
" Understand mapping modes:
" http://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping#answer-3776182
" http://stackoverflow.com/questions/22849386/difference-between-nnoremap-and-inoremap#answer-22849425
" =====================================

let mapleader=";"

command! ConfigEdit 	:edit $MYVIMRC
command! ConfigReload	:source $MYVIMRC | echo $MYVIMRC "reloaded"

inoremap <leader><leader> <Esc><Right>
vnoremap <leader><leader> <Esc>
nnoremap <leader><leader> <Insert>

noremap <C-Space> :
inoremap <C-Space> <C-O>:
cnoremap <C-space> <Esc>

noremap <BS> <Left>x

noremap     <C-S>   :w<CR>
inoremap    <C-S>   <C-O>:w<CR>

noremap     <C-C>   yy
vnoremap    <C-C>   y
inoremap    <C-C>   <C-O>yy

noremap     <C-X>   dd
vnoremap    <C-X>   d
inoremap    <C-X>   <C-O>dd

noremap     <C-V>   p
inoremap    <C-V>   <C-O>p

noremap     <C-Q>   :q<CR>
inoremap    <C-Q>   <C-O>:q<CR>

noremap     <C-K>   :bdelete<CR>
inoremap     <C-K>   <C-O>:bdelete<CR>

noremap     <C-N>   :bnext<CR>
inoremap    <C-N>   <C-O>:bnext<CR>
noremap     <C-P>   :bprevious<CR>
inoremap    <C-P>   <C-O>:bprevious<CR>

noremap     <C-Z>   u
inoremap    <C-Z>   <C-O>u

noremap     <C-Y>   <C-R>
inoremap    <C-Y>   <C-O><C-R>

" Keybindings for selections using SHIFTS
noremap     <S-l>       v<Right>
vnoremap    <S-l>       <Right>
vnoremap    l           <Esc><Right>
noremap     <S-Right>   v<Right>
vnoremap    <S-Right>   <Right>
inoremap    <S-Right>   <C-O>v<Right><Left>
vnoremap    <Right>     <Esc><Right>

noremap     <S-h>       v<Left>
vnoremap    <S-h>       <Left>
vnoremap    h           <Esc><Left>
noremap     <S-Left>    v<Left>
vnoremap    <S-Left>    <Left>
inoremap    <S-Left>    <Left><C-O>v
vnoremap    <Left>      <Esc>

noremap     <S-j>       v<Down>
vnoremap    <S-j>       <Down>
vnoremap    j           <Esc><Down>
noremap     <S-Down>    v<Down>
vnoremap    <S-Down>    <Down>
inoremap    <S-Down>    <C-O>v<Down><Left>
vnoremap    <Down>      <Esc><Down><Right>

noremap     <S-k>       v<Up>
vnoremap    <S-k>       <Up>
vnoremap    k           <Esc><Up>
noremap     <S-Up>      v<Up>
vnoremap    <S-Up>      <Up>
inoremap    <S-Up>      <Left><C-O>v<Up>
vnoremap    <Up>        <Esc><Up><Right>


" go to next buffer
"nnoremap <silent> <leader>bn :bn<CR>
"nnoremap <C-l> :bn<CR>


" horizontal split with new buffer
"nnoremap <silent> <leader>bh :new<CR>

" vertical split with new buffer
"nnoremap <silent> <leader>bv :vnew<CR>

" redraw screan and clear search highlighted items
"http://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting#answer-25569434
"nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

