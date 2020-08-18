let InitDir = fnamemodify($MYVIMRC, ':p:h')

exec 'source ' . InitDir . '/plug.vim'

call plug#begin()
Plug 'kyoz/purify', { 'rtp': 'vim' }
call plug#end()

syntax on
colorscheme purify

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
