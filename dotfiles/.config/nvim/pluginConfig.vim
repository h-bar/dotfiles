colorscheme purify
let g:airline_theme='purify'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif