let InitDir = fnamemodify($MYVIMRC, ':p:h')

exec 'source ' . InitDir . '/plug.vim'

call plug#begin()
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'myusuf3/numbers.vim'
call plug#end()

syntax on
colorscheme purify
let g:airline_theme='purify'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Enable mouse support for cursor and selection
set mouse=a
set virtualedit=onemore
set whichwrap=b,h,l,<,>,[,]
set number
set tabstop=4
set shiftwidth=4
set expandtab
set wildignorecase
set smartcase
set autoindent

set wildmode=longest:full

exec 'source ' . InitDir . '/keymap.vim'
