set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'tpope/vim-fugitive'
call vundle#end()            " required
filetype plugin indent on    " required

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'Valloric/YouCompleteMe'
Plugin 'mboughaba/i3config.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tbastos/vim-lua'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

execute pathogen#infect()
filetype plugin indent on
" packadd! onedark.vim
map qq :q!<Enter>
map qw :wq<Enter>

set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

let g:vim_markdown_folding_disabled = 1

syntax on
set number
"set hlsearch
"set smartcase
"set ignorecase
"set incsearch

if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

autocmd FileType python map <buffer> <F7> :call Flake8()<CR>
map <C-c> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-Left> <C-w>h
map <C-l> <C-w>l
map <C-Right> <C-w>l
map <C-j> <C-w>j
map <C-Down> <C-w>j
map <C-k> <C-w>k
map <C-Up> <C-w>k


let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
"let g:ycm_python_binary_path = 'python'
"let g:ycm_server_python_interpreter = '/bin/python'
let g:ycm_key_list_stop_completion = ['<Enter>']
