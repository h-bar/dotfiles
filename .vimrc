set shell=/bin/bash

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/goyo.vim'
Plugin 'majutsushi/tagbar'

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'mattn/emmet-vim'

Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'
Plugin 'yggdroot/indentline'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'fatih/vim-go'
Plugin 'w0rp/ale'
Plugin 'sheerun/vim-polyglot'
Plugin 'nvie/vim-flake8'
Plugin 'jmcomets/vim-pony'

Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number

set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_key_list_stop_completion = ['<Enter>']
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>"

let g:user_emmet_mode='a'

let g:airline#extensions#tabline#enabled = 1

let g:vim_markdown_folding_disabled = 1

let g:goyo_width = 100

autocmd FileType python map <buffer> <F7> :call Flake8()<CR>
autocmd FileType go map <buffer> <F7> :GoBuild <CR>

map qq :q!<Enter>
map qw :wq<Enter>

map <ESC>[1;5C <C-Right>
map <ESC>[1;5D <C-Left>
map <ESC>[1;5A <C-Up>
map <ESC>[1;5B <C-Down>

map <C-c> :NERDTreeTabsToggle<CR>
nmap <F8> :TagbarToggle<CR>

map <C-g> :Goyo<CR>

map <C-h> <C-w>h
map <C-Left> <C-w>h
map <C-l> <C-w>l
map <C-Right> <C-w>l
map <C-j> <C-w>j
map <C-Down> <C-w>j
map <C-k> <C-w>k
map <C-Up> <C-w>k

map <C-s><up> :tabr<cr>
map <C-s><down> :tabl<cr>
map <C-s><left> :tabp<cr>
map <C-s><right> :tabn<cr>