let InitDir = fnamemodify($MYVIMRC, ':p:h')

exec 'source ' . InitDir . '/plug.vim'

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'myusuf3/numbers.vim'
Plug 'preservim/nerdtree'
Plug 'h-bar/sonokai'
Plug 'sheerun/vim-polyglot'
Plug 'raimondi/delimitmate'
Plug 'preservim/nerdcommenter'
Plug 'godlygeek/tabular'
call plug#end()

syntax on
set termguicolors
filetype plugin on

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

exec 'source ' . InitDir . '/pluginConfig.vim'
exec 'source ' . InitDir . '/keymap.vim'


command! ConfigEdit 	:edit $MYVIMRC
command! ConfigReload	:source $MYVIMRC | echo $MYVIMRC "reloaded"
command! -nargs=1 Grep  :grep <args> | cwindow
