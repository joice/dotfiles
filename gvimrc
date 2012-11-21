" No audible bell
set vb

" No toolbar
set guioptions-=T

" Use console dialogs
set guioptions+=c

" No Scrollbars
set guioptions+=LlRrb
set guioptions-=LlRrb

" Local config
if filereadable($HOME . "/.gvimrc.local")
  source ~/.gvimrc.local
endif

" Colour scheme
set background=light
colorscheme github

" Default window size
set lines=33 columns=90

" Font
set guifont=Monaco:h14
