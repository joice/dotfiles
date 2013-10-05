" Line numbers are good, relative is better
set relativenumber

" Allow backspace in insert mode, cause we all love MS Word
set backspace=indent,eol,start

" Store lots of :cmdline history
set history=1000

" Show incomplete cmds down the bottom
set showcmd

" Show current mode down the bottom
set showmode

" No blink, no sound, no annoyances
set gcr=a:blinkon0
set visualbell

" Reload files changed outside vim
set autoread

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

syntax on
let mapleader=','

set noswapfile
set nobackup
set nowb

" Persistent undo
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
set nowrap
set linebreak

" Completion
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" Scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" Avoid yank overwrite after paste
vnoremap p "_dP
