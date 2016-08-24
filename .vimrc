set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on
set tabstop=2
set shiftwidth=2
set expandtab

filetype plugin indent off

if 0 | endif

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif 

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'

call neobundle#end()



filetype plugin indent on

NeoBundleCheck
