let InitDir = fnamemodify($MYVIMRC, ':p:h')

exec 'source ' . InitDir . '/plug.vim'

call plug#begin()
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
call plug#end()

syntax on
colorscheme purify
let g:airline_theme='purify'

" Enable mouse support for cursor and selection
set mouse=a
set virtualedit=onemore
set whichwrap=b,h,l,<,>,[,]

set tabstop=4
set shiftwidth=4
set expandtab
set wildignorecase
set smartcase
set autoindent

set wildmode=longest:full

exec 'source ' . InitDir . '/keymap.vim'
