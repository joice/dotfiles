" Make it beautiful - colors and fonts

" http://ethanschoonover.com/solarized/vim-colors-solarized
set background=dark
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
colorscheme solarized

highlight clear SignColumn

if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=30
  set columns=100

  set guifont=Inconsolata\ for\ Powerline:h18
else
  "dont load csapprox if we no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
endif

