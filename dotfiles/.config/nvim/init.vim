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
Plug 'junegunn/fzf', { 'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mhinz/vim-startify'
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

command! ConfigEdit 	:edit $MYVIMRC
command! ConfigReload	:source $MYVIMRC | echo $MYVIMRC "reloaded"

command! FindInFile     :BLines
command! OpenFile       :Files
command! FindInProject  :Rg
command! FindInC        :Rg --glob "*.c" --glob "*.h"


exec 'source ' . InitDir . '/keymap.vim'

