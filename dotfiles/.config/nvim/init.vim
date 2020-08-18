let InitDir = fnamemodify($MYVIMRC, ':p:h')

exec 'source ' . InitDir . '/plug.vim'

call plug#begin()
call plug#end()

" Enable mouse support for cursor and selection
set mouse=a
set virtualedit=onemore

set tabstop=4
set shiftwidth=4
set expandtab

exec 'source ' . InitDir . '/keymap.vim'
