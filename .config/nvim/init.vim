set shell=/bin/bash

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
endif

let g:neosnippet#snippets_directory = '~/.config/nvim/snippets'

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeTabsToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeTabsToggle' }
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }

Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'bling/vim-airline'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

Plug 'yggdroot/indentline'
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': 'go' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'dense-analysis/ale'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi', { 'for': 'python' }
Plug 'carlitux/deoplete-ternjs', { 'for': ['vim', 'vue', 'html', 'htmldjango' ] }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make', 'for': 'go' }
Plug 'deoplete-plugins/deoplete-zsh', { 'for': 'zsh' }
Plug 'Shougo/deoplete-clangx', { 'for': ['c', 'cpp'] }
Plug 'Shougo/neco-vim', { 'for': 'vim' }

Plug 'raimondi/delimitmate'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

call plug#end()

syntax on
colorscheme zellner
set number

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd FileType python,go set sw=4
autocmd FileType python,go set ts=4
autocmd FileType python,go set sts=4

autocmd FileType lua,html,htmldjango set sw=2
autocmd FileType lua,html,htmldjango set ts=2
autocmd FileType lua,html,htmldjango set expandtab

autocmd FileType neosnippet set expandtab!

let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:tagbar_sort = 0
let g:tagbar_foldlevel = 1

let g:airline#extensions#tabline#enabled = 1

let g:vim_markdown_folding_disabled = 1

let g:goyo_width = 100

let g:user_emmet_mode = 'a'
let g:user_emmet_install_global = 0
autocmd FileType html,css,htmldjango EmmetInstall

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1
let g:python3_host_prog='/usr/bin/python'
let g:python_host_prog='/usr/bin/python'
let g:deoplete#sources#ternjs#tern_bin = '/usr/bin/tern'
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#filetypes = ['vue', 'html', 'htmldjango']

let g:delimitMate_autoclose = 1
let g:delimitMate_matchpairs = "(:),[:],{:},<:>"
let g:delimitMate_jump_expansion = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_inside_quotes = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_open_list = 1
let g:ale_list_window_size = 3

autocmd FileType python let b:ale_linters = ['flake8']
autocmd FileType python let b:ale_fixers = ['autopep8', 'yapf']
autocmd FileType python let b:ale_warn_about_trailing_whitespace = 0

let g:neosnippet#scope_aliases = {}
let g:neosnippet#scope_aliases['python'] = 'python,django'
let g:neosnippet#scope_aliases['htmldjango'] = 'html'
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

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

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

