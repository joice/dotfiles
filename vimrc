if has('vim_starting')
  set nocompatible " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

set encoding=utf-8
set termencoding=utf-8

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Shougo/vimproc'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'altercation/solarized', { 'rtp': 'vim-colors-solarized' }
NeoBundle 'briancollins/vim-jst'
NeoBundle 'claco/jasmine.vim'
NeoBundle 'evanmiller/nginx-vim-syntax'
NeoBundle 'garbas/vim-snipmate.git'
NeoBundle 'groenewege/vim-less.git'
NeoBundle 'honza/vim-snippets'
NeoBundle 'itspriddle/vim-jquery.git'
NeoBundle 'jtratner/vim-flavored-markdown.git'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'natw/keyboard_cat.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'majutsushi/tagbar.git'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-endwise.git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-rake.git'
NeoBundle 'tpope/vim-repeat.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'vim-addon-mw-utils'
NeoBundle 'vim-ruby/vim-ruby.git'
NeoBundle 'bling/vim-airline'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'

filetype plugin indent on

" Installation check.
NeoBundleCheck
