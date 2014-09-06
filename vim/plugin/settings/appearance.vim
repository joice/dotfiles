set colorcolumn=100
set background=light

colorscheme solarized

if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=60
  set columns=190
  set guifont=Inconsolata\ for\ Powerline:h18
else
  " let g:solarized_termcolors = 16
  " let g:solarized_termtrans = 1

  set laststatus=2
endif
