"""""""""""""""""""""""""""""
""  Theme Config
""""""""""""""""""""""""""""
if has('termguicolors')
  set termguicolors
endif

let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0
colorscheme sonokai


""""""""""""""""""""""""""""
""  Airline Config
""""""""""""""""""""""""""""
let g:airline_theme = 'sonokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


""""""""""""""""""""""""""""
"" NERDCommenter
""""""""""""""""""""""""""""
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
let g:NERDCreateDefaultMappings = 0

"""""""""""""""""""""""""""""
"" FZF and Ripgrep
"""""""""""""""""""""""""""""
let $FZF_DEFAULT_COMMAND='rg --follow --hidden --column --line-number --no-heading --smart-case -l ""'
let g:fzf_buffers_jump = 1

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --follow --hidden --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)

